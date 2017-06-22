/**
 * Created by linkzz on 2017-05-06.
 */
$(function(){
    //页面加载完成之后执行
    $.jgrid.defaults.width = $(window).width();
    $.jgrid.defaults.height = $(window).height-130;
    $.jgrid.defaults.responsive = true;
    $.jgrid.defaults.styleUI = 'Bootstrap';
    $.jgrid.styleUI.Bootstrap.base.rowTable = "table table-bordered table-striped";
    pageInit();
});
function pageInit(){
    var jqGrid = "#jqGrid";
    var jqGridPager = "#jqGridPager";

    //创建jqGrid组件
    $(jqGrid).jqGrid({
        url: 'permission/dataGrid',
        editurl : 'permission/saveOrUpdate',
        datatype: "json",
        mtype: "POST",
        caption: "",
        loadonce: false,
        colModel: [
            {
                label: 'ID',
                name: 'id',
                hidden:true,
                key: true,
                width: 75,
                editable:false
            },
            {
                label: '权限名称',
                name: 'name',
                width: 150,
                editable:true,
                formoptions: {
                    colpos: 1,
                    rowpos: 1
                }
            },
            {
                label: '父级权限',
                name: 'pid',
                hidden:true
            },
            {
                label: '权限值',
                name: 'value',
                width: 150,
                editable:true,
                formoptions: {
                    colpos: 2,
                    rowpos: 1
                }
            },
            {
                label: 'URL地址',
                name: 'url',
                width: 150,
                editable:true,
                formoptions: {
                    colpos: 1,
                    rowpos: 2
                }
            },
            {
                label: '权限描述',
                name: 'intro',
                width: 150,
                editable:true,
                formoptions: {
                    colpos: 2,
                    rowpos: 2
                }
            },
            {
                label: '层级',
                name: 'treelevel',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"0:零级;1:一级;2:二级;3:三级"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "零级";
                    if (cellvalue == 0){
                        temp = "零级";
                    }else if (cellvalue == 1){
                        temp = "一级";
                    }else if (cellvalue == 2){
                        temp = "二级";
                    }else {
                        temp = "三级";
                    }
                    return temp;
                },
                formoptions: {
                    colpos: 1,
                    rowpos: 3
                }
            },
            {
                label: '子节点',
                name: 'isleaf',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"true:是;false:否"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "是";
                    if (cellvalue == "false"){
                        temp = "否";
                    }
                    return temp;
                },
                formoptions: {
                    colpos: 2,
                    rowpos: 3
                }
            },
            {
                label: '异步加载',
                name: 'loaded',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"true:是;false:否"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "是";
                    if (cellvalue == "false"){
                        temp = "否";
                    }
                    return temp;
                },
                formoptions: {
                    colpos: 1,
                    rowpos: 4
                }
            },
            {
                label: '展开',
                name: 'expanded',
                width: 150,
                editable:true,
                edittype:"select",
                editoptions:{
                    value:"true:展开;false:隐藏"
                },
                formatter:function (cellvalue,options,rowObject) {
                    var temp = "展开";
                    if (cellvalue == "false"){
                        temp = "隐藏";
                    }
                    return temp;
                },
                formoptions: {
                    colpos: 2,
                    rowpos: 4
                }
            },
            {
                name : "lft",
                hidden : true
            },{
                name : "rgt",
                hidden : true
            },
            {
                name: '操作中心',
                index: '',
                width: 100,
                fixed: true,
                sortable: false,
                resize: false,
                formatter: 'actions'
            }
        ],
        shrinkToFit:true,
        colMenu : true,
        altRows:true,
        toppager:false,
        jqModal:true,
        rowNum:10000,
        rowList:[10,20,30],
        hoverrows:true,
        viewrecords: true,
        gridview: true,
        sortable:true,
        sortname:'id',
        multiselect:true,
        multiboxonly:true,
        multiselectWidth:20,
        rownumbers: true,
        rownumWidth: 25,
        toolbar:[false,"top"],
        // enable tree grid
        treeGrid:true,
        // which column is expandable
        expandColumn:"name",
        expandColClick:true,
        // datatype
        treedatatype:"json",
        // the model used
        treeGridModel:"adjacency",
        // configuration of the data comming from server
        treeReader:{
            left_field : "lft",
            right_field : "rgt",
            parent_id_field : "pid",
            level_field : "treelevel",
            leaf_field : "isleaf",
            expanded_field : "expanded",
            loaded : "loaded",
            icon_field : "icon"
        },
        loadError : function(xhr, st, err) {
            layer.msg("Type: " + st + "; Response: " + xhr.status + " "+ xhr.statusText, {time:1800});
        },
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
            add: true,
            edit: true,
            del: true,
            refresh: true,
            view: true,
            columns:false
        },
        // options for the Edit Dialog
        {
            editCaption: "编辑",
            top:$(window).height()/2-200,
            left:$(window).width()/2-300,
            width:600,
            modal:true,
            drag:true,
            resize:true,
            closeOnEscape:true,
            /*dataheight:150,*/
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
            top:$(window).height()/2-200,
            left:$(window).width()/2-300,
            width:600,
            modal:true,
            drag:true,
            resize:true,
            closeOnEscape:true,
            /*dataheight:150,*/
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
        },{
            top:$(window).height()/2-130,
            left:$(window).width()/2-300
        }
    );
    function afterCompleteFun(response,postdata) {
        var obj=jQuery.parseJSON(response.responseText);
        layer.msg(obj.msg, {time:1800});
    };
    $('#jqGrid').jqGrid('bindKeys');

}
