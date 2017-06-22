package com.link.admin.controller;

import com.jfinal.core.Controller;
import com.jfinal.kit.HashKit;
import com.link.api.kit.DateKit;
import com.link.api.service.UserServiceI;
import com.link.common.util.Constant;
import com.link.common.util.JqGrid;
import com.link.core.UserServiceImpl;
import com.link.model.TUser;

import java.util.Date;

/**
 * @ClassName: UserController
 * @Description: 用户管理控制器
 * @author: linkzz
 * @data: 2017-05-06 19:37
*/
public class UserController extends Controller {
    UserServiceI userService = enhance(UserServiceImpl.class);
    /**
     * @Description: 显示页面
     * @author: linkzz
     * @data: 2017-05-06 19:36
    */
    public void index(){
        render("user_index.html");
    }

    /**
     * @Description: 封装dataGrid数据集合
     * @author: linkzz
     * @data: 2017-05-06 19:35
    */
    public void dataGrid(){
        TUser user = getModel(TUser.class,"",true);
        JqGrid jqGrid = getBean(JqGrid.class,"",true);
        renderJson(userService.dataGrid(jqGrid,user,"t_user"));
    }

    /**
     * @Description: 增删改一起做
     * @author: linkzz
     * @data: 2017-05-08 11:48
    */
    public void saveOrUpdate(){
        TUser user = getModel(TUser.class,"",true);
        JqGrid jqGrid = getBean(JqGrid.class,"",true);
        if (jqGrid.getOper().equals(Constant.ADD)){
            user.setPassword(HashKit.md5("111111"));
            user.setCreateAt(DateKit.toStr(new Date(),DateKit.timeFormat));
        }else if (jqGrid.getOper().equals(Constant.EDIT)){
            user.setUpdateAt(DateKit.toStr(new Date(),DateKit.timeFormat));
        }else {
            user.setDeleteAt(DateKit.toStr(new Date(),DateKit.timeFormat));
        }
        renderJson(userService.saveOrUpdate(user,user.getId(),"t_user",jqGrid));
    }

    /**
     * @Description: 用户个人资料
     * @author: linkzz
     * @data: 2017-05-09 11:11
    */
    public void getUser(){
        String id = getPara("id");
        TUser user = userService.getUser(id);
        setAttr("user",user);
        render("profile.html");
    }

    /**
     * @Description: 用户详情
     * @author: linkzz
     * @data: 2017-05-09 11:11
    */
    public void detail(){
        String id = getPara("id");
        TUser user = userService.getUser(id);
        setAttr("user",user);
        render("userDetail.html");
    }

    /**
     * @Description: 修改密码
     * @author: linkzz
     * @data: 2017-05-09 11:12
    */
    public void modifyPassword(){
        render("user/modifyPassword.html");
    }
}
