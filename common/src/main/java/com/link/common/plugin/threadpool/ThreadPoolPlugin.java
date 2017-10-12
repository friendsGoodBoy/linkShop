package com.link.common.plugin.threadpool;

import com.jfinal.plugin.IPlugin;

import java.util.concurrent.RejectedExecutionHandler;

/**
 * @ClassName: ThreadPoolPlugin
 * @Description: jfinal 线程池插件
 * @author: linkzz
 * @data: 2017-09-25 9:16
*/
public class ThreadPoolPlugin implements IPlugin {
    final static String DEFAULT = "default";
    //线程池名称
    private String name = DEFAULT;
    //初始线程数
    private int coreSize;
    //最大线程数
    private int maxSize;
    //队列大小
    private int queueSize ;
    //线程保持时间
    private int keepAliveTime;
    //策略
    private RejectedExecutionHandler rejectedExecutionHandler;

    /**
     * @Description: 队列满时处理策略
     * @author: linkzz
     * @data: 2017-09-25 9:51
    */
    public ThreadPoolPlugin(String name, int coreSize, int maxSize, int queueSize, int keepAliveTime, RejectedExecutionHandler rejectedExecutionHandler) {
        this.name = name;
        this.coreSize = coreSize;
        this.maxSize = maxSize;
        this.queueSize = queueSize;
        this.keepAliveTime = keepAliveTime;
        this.rejectedExecutionHandler = rejectedExecutionHandler;
    }

    @Override
    public boolean start() {
        return false;
    }

    @Override
    public boolean stop() {
        return false;
    }
}
