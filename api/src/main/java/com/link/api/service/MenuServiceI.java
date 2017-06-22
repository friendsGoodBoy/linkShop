package com.link.api.service;

import com.link.api.service.base.BaseServiceI;
import com.link.common.util.ResultJson;
import com.link.model.TMenu;

import java.util.List;

/**
 * Created by linkzz on 2017-05-26.
 */
public interface MenuServiceI extends BaseServiceI {
    public List<TMenu> sidebar(String userId,String pid);
    public boolean save(TMenu menu);
    public boolean delete(TMenu menu);
    public List<TMenu> findMenu();
    public List<String> findRoleMenus(String roleId);
    public ResultJson saveRoleMenu(String roleId,List<String> linkMenuId);
}
