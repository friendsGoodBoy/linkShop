package com.link.webMagic;

import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Model;
import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.annotation.ExtractBy;

import java.util.Set;

public class NwnuWebMagic extends Model<NwnuWebMagic> implements AfterExtractor {

    public Site site = Site.me().setRetryTimes(3).setSleepTime(0).setTimeOut(3000);

    //用来存储cookie信息
    private Set<Cookie> cookies;

    //用ExtractBy注解的字段会被自动抽取并填充

    //默认是xpath语法
    @ExtractBy(value = "h1.jf-article-title",type = ExtractBy.Type.Css)
    private String title;

    //可以定义抽取语法为Css、Regex等
    @ExtractBy(value = "div.jf-article-content", type = ExtractBy.Type.Css)
    private String content;


    @Override
    public void afterProcess(Page page) {
        //jfinal 的属性其实是一个map而不是字段，没关系，填充进去就是了
        this.set("id", StrKit.getRandomUUID());
        this.set("title",title);
        this.set("content",content);
        save();
    }

    //使用 selenium 来模拟用户的登录获取cookie信息
    public void login(String username,String password) {
        WebDriver driver = new ChromeDriver();
        driver.get("http://210.26.111.34/");

        driver.findElement(By.id("uCode")).clear();

        //在******中填你的用户名
        driver.findElement(By.id("uCode")).sendKeys(username);

        driver.findElement(By.id("uPassword")).clear();
        //在*******填你密码
        driver.findElement(By.id("uPassword")).sendKeys(password);

        //模拟点击登录按钮
        driver.findElement(By.id("login_btn")).click();

        //获取cookie信息
        cookies = driver.manage().getCookies();
        driver.close();
    }

    public Site getSite() {
        //将获取到的cookie信息添加到webmagic中
        for (Cookie cookie : cookies) {
            site.addCookie(cookie.getName().toString(),cookie.getValue().toString());
        }
        return site.addHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1");
    }
}
