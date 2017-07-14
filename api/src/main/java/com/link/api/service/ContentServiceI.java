package com.link.api.service;

import com.link.api.service.base.BaseServiceI;
import com.link.common.util.ResultJson;
import com.link.model.Content;

/**
 * Created by linkzz on 2017-07-06.
 */
public interface ContentServiceI extends BaseServiceI {

    public ResultJson save(Content model);

    public Content getContentById(String id);
}
