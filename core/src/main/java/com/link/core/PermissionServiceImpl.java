package com.link.core;

import com.jfinal.aop.Before;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.link.api.service.PermissionServiceI;
import com.link.common.util.Constant;
import com.link.common.util.ResultJson;
import com.link.core.base.BaseServiceImpl;
import com.link.model.TPermission;
import com.link.model.TRolePermission;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by linkzz on 2017-06-08.
 */
public class PermissionServiceImpl extends BaseServiceImpl implements PermissionServiceI {
    @Override
    public List<TPermission> findPermission() {
        return TPermission.dao.find("SELECT *\n" +
                "  FROM t_permission T\n" +
                " START WITH T.ID in (select id from t_permission m where m.pid is null)\n" +
                "CONNECT BY PRIOR ID = T.Pid");
    }

    @Override
    public List<String> findRolePermission(String roleId) {
        List<TRolePermission> listRolePermission = TRolePermission.dao.find("SELECT * FROM T_ROLE_PERMISSION T WHERE T.ROLE_ID = ?",roleId);
        List<String> list = new ArrayList<String>();
        for (TRolePermission rolePermission : listRolePermission){
            list.add(rolePermission.getPermissionId());
        }
        return list;
    }

    @Override
    public List<String> urls(String userId) {
        List<TPermission> permissionList = TPermission.dao.find("SELECT t.* FROM t_permission t \n" +
                "  inner join t_role_permission trp on t.id = trp.permission_id \n" +
                "  INNER JOIN T_ROLE r ON trp.ROLE_ID = r.ID \n" +
                "  INNER JOIN T_USER_ROLE TUR ON r.ID = TUR.ROLE_ID \n" +
                "  INNER JOIN T_USER U ON TUR.USER_ID = U.ID WHERE U.ID = ?",userId);
        List<String> list = new ArrayList<String>();
        for (TPermission permission : permissionList){
            list.add(permission.getUrl());
        }
        return list;
    }

    @Before(Tx.class)
    @Override
    public ResultJson saveRolePermission(String roleId, List<String> strings) {
        ResultJson resultJson = new ResultJson();
        try {
            List<TRolePermission> rolePermissionList = TRolePermission.dao.find("SELECT * FROM T_ROLE_PERMISSION T WHERE T.ROLE_ID = ?",roleId);
            if (rolePermissionList != null && rolePermissionList.size() > 0){
                for (TRolePermission rolePermission : rolePermissionList){
                    rolePermission.delete();
                }
            }
            if (strings != null && strings.size() > 0){
                for (String str : strings){
                    TRolePermission trp = new TRolePermission();
                    trp.setId(StrKit.getRandomUUID());
                    trp.setRoleId(roleId);
                    trp.setPermissionId(str);
                    trp.save();
                }
            }
            resultJson.setStatus(Constant.RESULT_SUCCESS);
            resultJson.setMsg("权限分配成功！");
        } catch (Exception e) {
            resultJson.setStatus(Constant.RESULT_SQL_ERROR);
            resultJson.setMsg("权限操作异常！");
            e.printStackTrace();
        }
        return resultJson;
    }
}
