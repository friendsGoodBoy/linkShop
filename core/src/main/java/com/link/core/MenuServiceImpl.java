package com.link.core;

import com.jfinal.kit.StrKit;
import com.link.api.service.MenuServiceI;
import com.link.common.util.Constant;
import com.link.common.util.ResultJson;
import com.link.core.base.BaseServiceImpl;
import com.link.model.TMenu;
import com.link.model.TRoleMenu;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by linkzz on 2017-05-26.
 */
public class MenuServiceImpl extends BaseServiceImpl implements MenuServiceI {

    @Override
    public List<TMenu> sidebar(String userId,String pid) {
        String sql = "SELECT DISTINCT T.* FROM T_MENU T\n" +
                "  LEFT JOIN T_ROLE_MENU TRM ON T.ID = TRM.MENU_ID\n" +
                "  LEFT JOIN T_ROLE R ON TRM.ROLE_ID = R.ID\n" +
                "  LEFT JOIN T_USER_ROLE TUR ON R.ID = TUR.ROLE_ID\n" +
                "  LEFT JOIN T_USER U ON TUR.USER_ID = U.ID WHERE U.ID=?";
        List<TMenu> menus;
        /*if (StrKit.isBlank(pid)){
            sql = sql + " and T.PID IS NULL";
            menus = TMenu.dao.find(sql,userId);
        }else {
            sql = sql + "  and T.PID = ?";
            menus = TMenu.dao.find(sql,userId,pid);
        }*/
        menus = TMenu.dao.find(sql,userId);
        return menus;
    }

    @Override
    public boolean save(TMenu menu) {
        return false;
    }

    @Override
    public boolean delete(TMenu menu) {
        return false;
    }

    @Override
    public List<TMenu> findMenu() {
        List<TMenu> list = TMenu.dao.find("SELECT * FROM T_MENU T START WITH T.ID IN (SELECT id FROM T_MENU M WHERE M.PID is null) CONNECT BY PRIOR ID = T.PID");
        return list;
    }

    @Override
    public List<String> findRoleMenus(String roleId) {
        List<TRoleMenu> roleMenus = TRoleMenu.dao.find("SELECT * FROM T_ROLE_MENU T WHERE T.ROLE_ID = ?",roleId);
        List<String> list = new ArrayList<String>();
        if (roleMenus != null && roleMenus.size() > 0){
            for (TRoleMenu roleMenu : roleMenus){
                list.add(roleMenu.getMenuId());
            }
        }
        return list;
    }

    @Override
    public ResultJson saveRoleMenu(String roleId, List<String> linkMenuId) {
        ResultJson resultJson = new ResultJson();
        try {
            if (linkMenuId != null && linkMenuId.size() > 0){
                for (String menuId : linkMenuId){
                    TRoleMenu roleMenu = new TRoleMenu();
                    roleMenu.setId(StrKit.getRandomUUID());
                    roleMenu.setRoleId(roleId);
                    roleMenu.setMenuId(menuId);
                    roleMenu.save();
                }
            }
            resultJson.setStatus(Constant.RESULT_SUCCESS);
            resultJson.setMsg("角色菜单分配成功！");
        } catch (Exception e) {
            resultJson.setStatus(Constant.RESULT_SQL_ERROR);
            resultJson.setMsg("分配角色是数据库发生异常！");
            e.printStackTrace();
        }
        return resultJson;
    }

}
