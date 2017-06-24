package com.link.api.service;

import com.link.api.service.base.BaseServiceI;
import com.link.common.util.ResultJson;
import com.link.model.Menu;

import java.util.List;

/**
 * Created by linkzz on 2017-05-26.
 */
public interface MenuServiceI extends BaseServiceI {
    public List<Menu> sidebar(String userId,String pid);
    public boolean save(Menu menu);
    public boolean delete(Menu menu);
    public List<Menu> findMenu();
    public List<String> findRoleMenus(String roleId);
    public ResultJson saveRoleMenu(String roleId,List<String> linkMenuId);
}
