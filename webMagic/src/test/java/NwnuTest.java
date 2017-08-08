import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.link.webMagic.NwnuWebMagic;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.OOSpider;

public class NwnuTest {

    public static void main(String[] args){
        String url = "jdbc:mysql://localhost:3306/linkup?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull";
        String username = "root";
        String password = "123456";
        DruidPlugin druidPlugin = new DruidPlugin(url,username,password);
        druidPlugin.start();
        ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
        arp.addMapping("t_blog",NwnuWebMagic.class);
        arp.start();

        OOSpider.create(Site.me().setRetryTimes(3).setSleepTime(0).setTimeOut(3000),NwnuWebMagic.class).addUrl("http://www.jfinal.com/share/").run();
    }
}
