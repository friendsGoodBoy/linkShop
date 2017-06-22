package com.link.admin.controller;

import com.jfinal.core.Controller;
import com.jfinal.kit.LogKit;
import com.link.api.service.MenuServiceI;
import com.link.api.service.RoleServiceI;
import com.link.common.util.DataGrid;
import com.link.common.util.JqGrid;
import com.link.common.util.ResultJson;
import com.link.core.MenuServiceImpl;
import com.link.core.RoleServiceImpl;
import com.link.model.TMenu;
import com.link.model.TRole;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * Created by linkzz on 2017-03-09.
 */
public class MenuController extends Controller {
    MenuServiceI menuService = enhance(MenuServiceImpl.class);
    RoleServiceI roleService = enhance(RoleServiceImpl.class);
    /**
     * @Description: 显示页面
     * @author: linkzz
     * @data: 2017-06-02 11:22
    */
    public void index(){
        render("menu_index.html");
    }

    /**
     * @Description: 封装数据表格
     * @author: linkzz
     * @data: 2017-05-25 22:29
    */
    public void dataGrid(){
        TMenu model = getModel(TMenu.class,"",true);
        JqGrid jqGrid = getBean(JqGrid.class,"",true);
        DataGrid dataGrid = menuService.dataGrid(jqGrid,model,"t_menu");
        renderJson(menuService.treeDataGrid(jqGrid,model,"t_menu"));
    }

    /**
     * @Description: 增删改一起做
     * @author: linkzz
     * @data: 2017-06-02 11:23
    */
    public void saveOrUpdate(){
        TMenu model = getModel(TMenu.class,"",true);
        JqGrid jqGrid = getBean(JqGrid.class,"",true);
        renderJson(menuService.saveOrUpdate(model,model.getId(),"t_menu",jqGrid));
    }

    /**
     * @Description: 查询角色分配菜单
     * @author: linkzz
     * @data: 2017-06-08 14:58
    */
    public void assignMenu(){
        String roleId = getPara("roleId");
        TRole role = roleService.findRoleById(roleId);
        List<TMenu> list = menuService.findMenu();
        List<String> roleMenus = menuService.findRoleMenus(roleId);
        setAttr("role",role);
        setAttr("list",list);
        setAttr("roleMenus",roleMenus);
        render("assign_menu.html");
    }

    /**
     * @Description: 保存角色分配的菜单
     * @author: linkzz
     * @data: 2017-06-08 17:20
    */
    public void saveAssignMenu(){
        String roleId = getPara("roleId");
        String [] listMenuId = getParaValues("listMenuId");
        ResultJson resultJson = menuService.saveRoleMenu(roleId, Arrays.asList(listMenuId));
        renderJson(resultJson);
    }

    public void add(){
        TMenu menu = getModel(TMenu.class,"menu");
        menu.setId(UUID.randomUUID().toString().replace("-",""));
        LogKit.info(menu.toString());
        boolean result = menuService.save(menu);
        ResultJson resultJson = new ResultJson();
        if (result){
            LogKit.info("保存成功！");
            resultJson.setStatus("true");
            resultJson.setMsg("保存成功！");
            return;
        }else {
            LogKit.info("保存失败！");
            resultJson.setStatus("false");
            resultJson.setMsg("保存失败！");
            return;
        }
    }

    public void delete(){
        String id = getPara("id");
        TMenu menu = new TMenu();
        menu.setId(id);
        boolean result = menuService.delete(menu);
        ResultJson resultJson = new ResultJson();
        if (result){
            LogKit.info("删除成功！");
            resultJson.setStatus("true");
            resultJson.setMsg("删除成功！");
            return;
        }else {
            LogKit.info("删除失败！");
            resultJson.setStatus("false");
            resultJson.setMsg("删除失败！");
            return;
        }
    }
}
