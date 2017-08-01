package com.link.webMagic;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.JsonFilePipeline;
import us.codecraft.webmagic.processor.PageProcessor;

public class GithubRepoPageProcessor implements PageProcessor {
    private Site site = Site.me().setRetryTimes(3).setSleepTime(1000).setTimeOut(10000);

    @Override
    public void process(Page page) {
        page.addTargetRequests(page.getHtml().links().regex("(http://www\\.gslzcredit\\.gov\\.cn/[\\w\\-]+/[\\w\\-]+)").all());
        page.addTargetRequests(page.getHtml().links().regex("(http://www\\.gslzcredit\\.gov\\.cn/[\\w\\-])").all());
        //page.putField("author", page.getUrl().regex("http://www\\.gslzcredit\\.gov\\.cn/(\\w+)/.*").toString());
        page.putField("title", page.getHtml().xpath("//p[@class='MsoPlainText']/span/font/text()").toString());
        if (page.getResultItems().get("title")==null){
            //skip this page
            page.setSkip(true);
        }
        page.putField("readme", page.getHtml().xpath("//div[@id='readme']/tidyText()"));
    }

    @Override
    public Site getSite() {
        return site;
    }

    public static void main(String[] args) {
        Spider.create(new GithubRepoPageProcessor()).addUrl("http://www.gslzcredit.gov.cn/65/").addPipeline(new JsonFilePipeline("D:\\data\\webmagic")).thread(5).run();
    }
}
