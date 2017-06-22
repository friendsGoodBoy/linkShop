/**
 * Created by linkzz on 2017-06-07.
 */
function openiframe(url) {
    layer.open({
        type: 2,
        area: ['420px', '240px'],
        fixed: false, //不固定
        maxmin: true,
        content: url
    });
}
