package com.link.api.service;

import com.link.api.service.base.BaseServiceI;
import com.link.common.util.ResultJson;
import com.link.model.TPermission;

import java.util.List;

/**
 * Created by linkzz on 2017-06-08.
 */
public interface PermissionServiceI extends BaseServiceI {
    public List<TPermission> findPermission();

    public List<String> findRolePermission(String roleId);

    public List<String> urls(String userId);

    public ResultJson saveRolePermission(String roleId, List<String> strings);
}
