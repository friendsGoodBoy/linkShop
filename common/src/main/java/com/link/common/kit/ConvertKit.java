package com.link.common.kit;

/**
 * Created by linkzz on 2017-06-05.
 */
public class ConvertKit {
    /**
     * @Description: boolean 值和 0/1的转换
     * @author: linkzz
     * @data: 2017-06-14 15:15
    */
    public static int convert(boolean value){ if(value) return 1; else return 0;}

    /**
     * @Description: 获取IP地址
     * @author: linkzz
     * @data: 2017-06-14 15:15
    */
    public static String getRemoteHost(javax.servlet.http.HttpServletRequest request){
        String ip = request.getHeader("x-forwarded-for");
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getHeader("Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
            ip = request.getRemoteAddr();
        }
        return ip.equals("0:0:0:0:0:0:0:1")?"127.0.0.1":ip;
    }
}
