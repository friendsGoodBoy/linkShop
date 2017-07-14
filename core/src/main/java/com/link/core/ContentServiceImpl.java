package com.link.core;

import com.jfinal.kit.StrKit;
import com.link.api.service.ContentServiceI;
import com.link.common.kit.DateKit;
import com.link.common.util.Constant;
import com.link.common.util.ResultJson;
import com.link.core.base.BaseServiceImpl;
import com.link.model.Content;

import java.util.Date;

/**
 * Created by linkzz on 2017-07-06.
 */
public class ContentServiceImpl extends BaseServiceImpl implements ContentServiceI {
    @Override
    public ResultJson save(Content model) {
        ResultJson resultJson = new ResultJson();
        if (model.getBold() == null){
            model.setBold("off");
        }
        if (model.getStatus() == null){
            model.setStatus("off");
        }
        if (model.getHits() == null){
            model.setHits("off");
        }
        if (model.getGood() == null){
            model.setGood("off");
        }
        if (model.getItalic() == null){
            model.setItalic("off");
        }
        try {
            if ("".equals(model.getId()) || model.getId() == null){
                model.setId(StrKit.getRandomUUID());
                model.setCreatetime(DateKit.toStr(new Date(),DateKit.timeFormat));
                model.save();
            } else {
                model.setModifytime(DateKit.toStr(new Date(),DateKit.timeFormat));
                model.update();
            }
            resultJson.setStatus(Constant.RESULT_SUCCESS);
            resultJson.setMsg("信息保存成功！");
        } catch (Exception e) {
            resultJson.setStatus(Constant.RESULT_SQL_ERROR);
            resultJson.setMsg("信息保存失败，数据库操作异常！");
            e.printStackTrace();
        }
        return resultJson;
    }

    @Override
    public Content getContentById(String id) {
        return Content.dao.findById(id);
    }
}
