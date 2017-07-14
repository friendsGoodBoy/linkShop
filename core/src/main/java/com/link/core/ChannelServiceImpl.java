package com.link.core;

import com.link.api.service.ChannelServiceI;
import com.link.core.base.BaseServiceImpl;
import com.link.model.Channel;

import java.util.List;

/**
 * Created by linkzz on 2017-07-06.
 */
public class ChannelServiceImpl extends BaseServiceImpl implements ChannelServiceI {
    @Override
    public List<Channel> findChannelList() {
        return Channel.dao.find("select * from t_channel t");
    }
}
