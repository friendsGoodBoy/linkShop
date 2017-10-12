package com.link.cbrc.common;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import com.jfinal.json.JFinalJson;
import com.jfinal.kit.LogKit;
import com.jfinal.kit.StrKit;
import com.link.common.kit.ConvertKit;
import com.link.common.kit.DateKit;
import com.link.model.VisitorLog;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by linkzz on 2017-09-20.
 */
public class VisitLogInterceptor implements Interceptor {

    @Override
    public void intercept(Invocation invocation) {

        invocation.invoke();
        Controller controller = invocation.getController();
        HttpServletRequest request = controller.getRequest();
        LogKit.info("当前ip地址："+ConvertKit.getRemoteHost(request));

        VisitorLog log = new VisitorLog();
        log.setId(StrKit.getRandomUUID());
        log.setActionkey(invocation.getActionKey());
        log.setIp(ConvertKit.getRemoteHost(request));
        log.setVisittime(DateKit.toStr(new Date(),DateKit.timeStampPattern));
        log.setParams(JFinalJson.getJson().toJson(request.getParameterMap()));
        log.setResult(JFinalJson.getJson().toJson(controller.getRender()));
        log.save();
    }
}
