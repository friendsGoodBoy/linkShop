package com.link.webMagic;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.druid.DruidPlugin;
import org.apache.commons.lang3.StringUtils;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.OOSpider;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

import java.util.List;

//TargetUrl的意思是只有以下格式的URL才会被抽取出生成model对象
//这里对正则做了一点改动，'.'默认是不需要转义的，而'*'则会自动被替换成'.*'，因为这样描述URL看着舒服一点...
//继承jfinal中的Model
//实现AfterExtractor接口可以在填充属性后进行其他操作
@TargetUrl("http://www.gslzcredit.gov.cn/65/*.html")
public class OschinaBlog extends Model<OschinaBlog> implements AfterExtractor {

    //用ExtractBy注解的字段会被自动抽取并填充
    //默认是xpath语法
    @ExtractBy("//title")
    private String title;

    //可以定义抽取语法为Css、Regex等
    @ExtractBy(value = "div.BlogContent", type = ExtractBy.Type.Css)
    private String content;

    //multi标注的抽取结果可以是一个List
    @ExtractBy(value = "//div[@class='BlogTags']/a/text()", multi = true)
    private List<String> tags;

    @Override
    public void afterProcess(Page page) {
        //jfinal的属性其实是一个Map而不是字段，没关系，填充进去就是了
        this.set("title", title);
        this.set("content", content);
        this.set("tags", StringUtils.join(tags, ","));
        //保存
        save();
    }

    public static void main(String[] args) {
        DruidPlugin druidPlugin = new DruidPlugin("jdbc:mysql://127.0.0.1/linkup?characterEncoding=utf-8", "root", "123456");
        druidPlugin.start();
        ActiveRecordPlugin activeRecordPlugin = new ActiveRecordPlugin(druidPlugin);
        activeRecordPlugin.addMapping("t_blog", OschinaBlog.class);
        activeRecordPlugin.start();
        //启动webmagic
        //OOSpider.create(Site.me().addStartUrl("http://my.oschina.net/flashsword/blog/145796"), OschinaBlog.class).run();
        OOSpider.create(Site.me().setDomain("http://www.gslzcredit.gov.cn/"), OschinaBlog.class).run();
    }
}
