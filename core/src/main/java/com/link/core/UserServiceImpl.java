package com.link.core;

import com.jfinal.kit.StrKit;
import com.link.api.service.UserServiceI;
import com.link.core.base.BaseServiceImpl;
import com.link.model.TUser;

/**
 * Created by linkzz on 2017-05-26.
 */
public class UserServiceImpl extends BaseServiceImpl implements UserServiceI{
    @Override
    public TUser getUser(String id) {
        if (!StrKit.isBlank(id)){
            TUser user = TUser.dao.findById(id);
            return user;
        }else {
            return null;
        }
    }

    @Override
    public TUser getUserByUserName(String userName) {
        if (!StrKit.isBlank(userName)){
            TUser user = TUser.dao.findFirst("select * from t_user t where t.username = ?",userName);
            return user;
        }else {
            return null;
        }
    }
}
