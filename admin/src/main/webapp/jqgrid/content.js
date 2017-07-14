/**
 * Created by linkzz on 2017-05-06.
 */
$(function(){
    //页面加载完成之后执行
    $.jgrid.defaults.width = $(window).width();
    $.jgrid.defaults.height = $(window).height()-170;
    $.jgrid.defaults.responsive = true;
    $.jgrid.defaults.styleUI = 'Bootstrap';
    $.jgrid.styleUI.Bootstrap.base.rowTable = "table table-bordered table-striped";
    pageInit();
});
//自定义按钮
$.extend($.fn.fmatter, {
    actionFormatter: function(cellvalue, options, rowObject) {
        var url = "content/edit?id="+rowObject['id'];
        var retVal = '<button class="layui-btn layui-btn-mini" onclick="openiframe(\'' + url + '\')">编辑</button>';
        return retVal;
    }
});

function pageInit(){
    var jqGrid = "#jqGrid";
    var jqGridPager = "#jqGridPager";
    //创建jqGrid组件
    $(jqGrid).jqGrid({
        url: 'content/dataGrid',
        editurl : 'content/saveOrUpdate',
        datatype: "json",
        mtype: "POST",
        caption: "",
        loadonce: false,
        colModel: [
            {
                label: 'ID',
                name: 'id',
                index: 'id',
                hidden:true,
                key: true,
                width: 75,
                editable:false
            },
            {
                label: '标题',
                name: 'title',
                width: 150,
                editable:true
            },
            {
                label: '所属栏目',
                name: 'cid',
                width: 150,
                editable:true
            },
            {
                label: '加粗',
                name: 'bold',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"on:加粗;off:正常"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "加粗";
                    if (cellvalue == "off"){
                        temp = "正常";
                    }
                    return temp;
                }
            },{
                label: '斜体',
                name: 'italic',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"on:斜体;off:正常"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "斜体";
                    if (cellvalue == "off"){
                        temp = "正常";
                    }
                    return temp;
                }
            },
            {
                label: '排序',
                name: 'sorter',
                width: 150,
                editable:true
            },
            {
                label: '标题颜色',
                name: 'color',
                width: 150,
                editable:true
            },
            {
                label: '状态',
                name: 'status',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"true:启用;false:关闭"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "启用";
                    if (cellvalue == "off"){
                        temp = "关闭";
                    }
                    return temp;
                }
            },
            {
                label: '置顶',
                name: 'hits',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"true:置顶;false:不置顶"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "置顶";
                    if (cellvalue == "off"){
                        temp = "不置顶";
                    }
                    return temp;
                }
            },
            {
                label: '推荐',
                name: 'good',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"true:推荐;false:不推荐"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "推荐";
                    if (cellvalue == "off"){
                        temp = "不推荐";
                    }
                    return temp;
                }
            },
            {
                name : '操作中心',
                index : '',
                width : 100,
                fixed : true,
                sortable : false,
                resize : false,
                formatter: 'actionFormatter'
            }
        ],
        shrinkToFit:true,
        colMenu : true,
        altRows:true,
        toppager:false,
        jqModal:true,
        rowNum:10,
        rowList:[10,20,30],
        viewrecords: true,
        sortable:true,
        sortname:'id',
        multiselect:true,
        multiboxonly:true,
        multiselectWidth:20,
        rownumbers: true,
        rownumWidth: 25,
        toolbar:[true,"top"],
        pager: jqGridPager
    });
    /*创建filterToolbar*/
    $('#jqGrid').jqGrid('filterToolbar',{
        stringResult: true,
        searchOperators: true
    });
    /*创建jqGrid的操作按钮容器*/
    /*可以控制界面上增删改查的按钮是否显示*/
    $('#jqGrid').navGrid("#jqGridPager", {
            search: true, // show search button on the toolbar
            add: false,
            edit: false,
            del: true,
            refresh: true,
            view: true,
            columns:true,
            position: "left",
            cloneToTop: true
        },
        // options for the Edit Dialog
        {
            editCaption: "编辑",
            top:$(window).height()/2-130,
            left:$(window).width()/2-300,
            width:300,
            modal:true,
            recreateForm: true,
            checkOnUpdate : true,
            checkOnSubmit : true,
            closeAfterEdit: true,
            reloadAfterSubmit:true,
            afterComplete: afterCompleteFun,
            errorTextFormat: function (data) {
                return 'Error: ' + data.responseText
            }
        },
        // options for the Add Dialog
        {
            top:$(window).height()/2-130,
            left:$(window).width()/2-300,
            width:300,
            modal:true,
            closeAfterAdd: true,
            reloadAfterSubmit:true,
            recreateForm: true,
            afterComplete: afterCompleteFun,
            errorTextFormat: function (data) {
                return 'Error: ' + data.responseText
            }
        },
        // options for the Delete Dailog
        {
            top:$(window).height()/2-130,
            left:$(window).width()/2-300,
            width:300,
            afterComplete: afterCompleteFun,
            errorTextFormat: function (data) {
                return 'Error: ' + data.responseText
            }
        },
        // search options - define multiple search
        {
            top:$(window).height()/2-130,
            left:$(window).width()/2-300,
            multipleSearch: true,
            multipleGroup: false,
            showQuery: true
        },
        {
            top:$(window).height()/2-130,
            left:$(window).width()/2-300
        }
    );
    function afterCompleteFun(response,postdata) {
        var obj=jQuery.parseJSON(response.responseText);
        layer.msg(obj.msg, {time:1800});
    }
    $("#t_jqGrid").append('<div class="layui-btn-group"><button id="add" class="layui-btn layui-btn-small"> <i class="layui-icon">&#xe654;</i> 增加</button></div>');
    $("#add").on("click", function(){
        var url = "content/add";
        layer.full(openiframe(url));
    });
}

