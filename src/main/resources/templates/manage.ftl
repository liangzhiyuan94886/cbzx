<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <title>项目管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${request.contextPath}/static/layui/css/layui.css"  media="all">
    <script src="${request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
    <script src="${request.contextPath}/static/layui/jquery-1.9.1.min.js" charset="utf-8"></script>
</head>
<body>
<div class="layui-container">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline">

                <div class="layui-input-inline">
                    <select name="modules" id="select1" lay-verify="required" lay-search="" lay-filter="select1">
                        <option value="">请选择项目领域——</option>
                        <#list product as p>
                        <option value= ${p.id} > ${p.productType} </option>
                        </#list>
                    </select>
                </div>

                <div class="layui-input-inline">
                    <select name="statusId" id="select-status" lay-verify="required" lay-search="" lay-filter="select1">
                        <option value="">请选择项目状态——</option>
                        <#list status as s>
                        <option value= ${s.id} > ${s.status} </option>
                        </#list>
                    </select>
                </div>
            </div>
        </div>
    </form>
    <button type="button" id="addProduct" class="layui-btn">添加</button>
    <#--表格1信息-->
    <div class="layui-row layui-col-space1">
        <div class="layui-col-md12">
            <table class="layui-hide" id="table1" lay-filter="table1"></table>
        </div>
    </div>
    <#--产品类型信息-->
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;" id="f1">
        <legend>产品领域状态</legend>
    </fieldset>
    <div class="layui-row layui-col-space1">
        <div class="layui-col-md6">
            <button type="button" id="add-btn" class="layui-btn">添加</button>
            <table class="layui-hide" id="table2" lay-filter="table2"></table>
        </div>
        <div class="layui-col-md6">
            <button type="button" id="add-btn-product-status" class="layui-btn">添加</button>
            <table class="layui-hide" id="table-status" lay-filter="table-status"></table>
        </div>
    </div>

    <#--设置默认展示的图表信息-->
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;" id="">

    </fieldset>
    <#--表格3信息-->
    <div class="layui-row layui-col-space1">
        <div class="layui-col-md6">
            <table class="layui-hide" id="table3" lay-filter="table3"></table>
        </div>
    </div>
</div>

<#-------------------------------------以下隐藏弹框-------------------------------------------------------------->
<#--修改分类的弹框-->
<div id="form2" style="display: none;width: 90%;margin-top: 30px;text-align: center;">
    <form id="form-product-type" class="layui-form" action="/updateProductType">
        <div class="layui-inline">
            <label class="layui-form-label">分类名称</label>
            <div class="layui-input-block">
                <input id="input3" value="" type="text" name="typeName" lay-verify="title" autocomplete="off" class="layui-input">
            </div>
        </div>
        </br>
        <input type="hidden" name="id" id="input4">
        <div style="margin-top: 20px"></div>
        <button type="submit" class="layui-btn">保存</button>
    </form>
</div>
<div id="form-status" style="display: none;width: 90%;margin-top: 30px;text-align: center;">
    <form id="form-product-status" class="layui-form" action="/updateProductStatus">
        <div class="layui-inline">
            <label class="layui-form-label">状态名称</label>
            <div class="layui-input-block">
                <input id="status-name" value="" type="text" name="statusName" lay-verify="title" autocomplete="off" class="layui-input">
            </div>
        </div>
        </br>
        <input type="hidden" name="statusId" id="status-id">
        <div style="margin-top: 20px"></div>
        <button type="submit" class="layui-btn">保存</button>
    </form>
</div>

<#--新增项目的弹框-->
<div id="form4" style="display: none;width: 90%;margin-top: 30px;text-align: center">
    <form id="form-product" class="layui-form" action="/addProduct">
        <div class="layui-inline">
            <label class="layui-form-label">缺陷名称</label>
            <div class="layui-input-block">
                <input style="padding-right: 30px" type="text" id="product-name" name="name" lay-verify="required" lay-verify="title" autocomplete="off" placeholder="请输入项目名称" class="layui-input">
            </div>
        </div>
        </br></br>
        <div class="layui-inline">
            <label class="layui-form-label">所属产品</label>
            <div class="layui-input-inline">
                <select id="product-type" name="type" lay-search="" style="width: 300px">
                    <option value="">直接选择或搜索选择</option>
                    <#list product as p>
                        <option value= ${p.id} > ${p.productType} </option>
                    </#list>
                </select>
            </div>
        </div>
        </br></br>
        <div class="layui-inline">
            <label class="layui-form-label">项目状态</label>
            <div class="layui-input-inline">
                <select id="product-status" name="pstatus" lay-search="" style="width: 300px">
                    <option value="">直接选择或搜索选择</option>
                    <#list status as s>
                        <option value= ${s.id} > ${s.status} </option>
                    </#list>
                </select>
            </div>
        </div>
        </br></br>
        <div class="layui-inline">
            <label class="layui-form-label">缺陷地址</label>
            <div class="layui-input-block">
                <input style="padding-right: 30px" type="text" id="product-address" name="address" lay-verify="title" autocomplete="off" placeholder="请输入缺陷管理地址" class="layui-input">
            </div>
        </div>
        </br></br>
        <div class="layui-inline">
            <label class="layui-form-label">默认展示</label>
            <div class="layui-input-block" id="check_div">
                <input type='checkbox' id='check' name='display' value='0' lay-filter='switchTest' lay-skin='switch' lay-text='是|否'>
            </div>
        </div>
        </br></br>
        <input type="hidden" name="pid" id="product-pid">
        <button type="submit" class="layui-btn" lay-submit="">保存</button>
    </form>
</div>

</body>
<script type="text/javascript">
    layui.use(['form', 'layedit', 'laydate','table'], function(){
        var form = layui.form,
            layer = layui.layer,
            laydate = layui.laydate;

        var table = layui.table;
        //初始化项目分类
        table.render({
            elem: '#table1',
            url: '/getProduct',
            // toolbar: true,
            title: '用户数据表',
            totalRow: true,
            cols: [[
                {field:'name', title:'项目', width:200, fixed: 'left', unresize: true, sort: true},
                {field:'productType', title:'所属产品', width:126},
                {field:'statusname', title:'状态', width:126},
                {field:'address', title:'缺陷管理地址', width:579},
                {field:'display',templet: function(d){return d.display=='1'?'是':'否'}, title:'默认展示', width:100},
                {field:'', title:'操作', width:82, templet:function (item) {
                        var tem = [];
                        tem.push('<button type="button" lay-event="setSign" style="height: 26px;line-height: 26px" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>');
                        return tem.join(' <font></font> ')
                    }}
            ]],
            page: true,
            limit:10,
            response: {
                statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
            },
            parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
                // console.log(res.data )
                return {
                    "code":200, //解析接口状态
                    "msg": '', //解析提示文本
                    "count": res.total, //解析数据长度
                    "data": res.data.list //解析数据列表
                };
            },
        });

        //初始化展示产品种类
        table.render({
            elem: '#table2',
            url: '/getProductType',
            // toolbar: true,
            title: '',
            totalRow: true,
            cols: [[
                {field:'productType', title:'产品领域', width:476, fixed: 'left', unresize: true, sort: true},
                {field:'', title:'操作', width:130,  templet:function (item) {
                        var tem = [];
                        tem.push('<button type="button" lay-event="setSign1" style="height: 26px;line-height: 26px" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>' +
                                '<button type="button" lay-event="setSign2"style="height: 26px;line-height: 26px" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>');
                        return tem;
                    }}
            ]],
            page: true,
            limit:10,
            response: {
                statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
            },
            parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
                // console.log(res.data )
                return {
                    "code":200, //解析接口状态
                    "msg": '', //解析提示文本
                    "count": res.total, //解析数据长度
                    "data": res.data.list //解析数据列表
                };
            },
        });

        //table-status
        table.render({
            elem: '#table-status',
            url: '/getProductStatusList',
            // toolbar: true,
            title: '',
            totalRow: true,
            cols: [[
                {field:'status', title:'产品状态', width:476, fixed: 'left', unresize: true, sort: true},
                {field:'', title:'操作', width:130,  templet:function (item) {
                        var tem = [];
                        tem.push('<button type="button" lay-event="setSign1" style="height: 26px;line-height: 26px" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>' +
                                '<button type="button" lay-event="setSign2"style="height: 26px;line-height: 26px" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>');
                        return tem;
                    }}
            ]],
            page: true,
            limit:10,
            response: {
                statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
            },
            parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
                // console.log(res.data )
                return {
                    "code":200, //解析接口状态
                    "msg": '', //解析提示文本
                    "count": res.total, //解析数据长度
                    "data": res.data.list //解析数据列表
                };
            },
        });

        //选择分类后展示的表格
        form.on('select(select1)',function(data){
            var typeId = $("#select1").val();
            var statusId = $("#select-status").val();

            var table = layui.table;
            table.render({
                elem: '#table1',
                url: '/getProduct',
                where: {typeId: typeId, statusId: statusId},
                // toolbar: true,
                title: '用户数据表',
                totalRow: true,
                cols: [[
                    {field:'name', title:'项目', width:200, fixed: 'left', unresize: true, sort: true},
                    {field:'productType', title:'所属产品', width:126},
                    {field:'statusname', title:'状态', width:126},
                    {field:'address', title:'缺陷管理地址', width:579},
                    {field:'display',templet: function(d){return d.display=='1'?'是':'否'}, title:'默认展示', width:100},
                    {field:'', title:'操作', width:82, templet:function (item) {
                            var tem = [];
                            tem.push('<button type="button" lay-event="setSign" style="height: 26px;line-height: 26px" class="layui-btn layui-btn-sm"><i class="layui-icon"></i></button>');
                            return tem.join(' <font></font> ')
                        }}
                ]],
                page: true,
                limit:10,
                response: {
                    statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
                },
                parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
                    // console.log(res.data )
                    return {
                        "code":200, //解析接口状态
                        "msg": '', //解析提示文本
                        "count": res.total, //解析数据长度
                        "data": res.data.list //解析数据列表
                    };
                },
            });

        });

        //编辑所属分类的弹框区域
        table.on('tool(table1)',function(obj){
            $("#form-product").attr("action", "updateTypeAndAddress");
            $("#product-name").val(obj.data.name);
            $("#product-type").val(obj.data.type);
            $("#product-status").val(obj.data.pstatus);
            $("#product-address").val(obj.data.address);
            $("#product-pid").val(obj.data.pid);
            var d = obj.data.display;
            var listHtml = "";
            if (d==1) {
                listHtml = "<input type='checkbox' id='check' name='display' value='"+d+"' lay-filter='switchTest' lay-skin='switch' lay-text='是|否' checked>";
            }else {
                listHtml = "<input type='checkbox' id='check' name='display' value='"+d+"' lay-filter='switchTest' lay-skin='switch' lay-text='是|否'>";
            }
            $("#check_div").html(listHtml);
            form.render();//重新渲染
            var index = layer.open({//弹框
                type: 1,
                title: obj.data.name,
                content: $("#form4"),
                area: ['700px', '500px'],
            });
        });

        //添加项目
        $(document).on('click','#addProduct',function() {//添加
            $("#form-product").attr("action", "addProduct");
            $("#product-name").val("");
            $("#product-type").val("");
            $("#product-status").val("");
            $("#product-address").val("");
            var listHtml = "<input type='checkbox' id='check' name='check' value='0' lay-filter='switchTest' lay-skin='switch' lay-text='是|否'>";
            $("#check_div").html(listHtml);
            form.render();//重新渲染
            var index = layer.open({
                type: 1,
                content: $("#form4"),
                area: ['700px', '500px'],
            });
        });

        form.on('switch(switchTest)', function(data){
            if (this.checked == true) {
                $("#check").val(1);
            }else {
                $("#check").val(0);
            }
        });

        //分类添加
        $(document).on('click','#add-btn',function() {//添加
            $("#input3").val("");
            $("#input4").val("");
            $("#form-product-type").attr('action', "/addProductType");
            var index = layer.open({
                type: 1,
                content: $("#form2"),
                area: ['300px', '200px'],
            });
        });


        $(document).on('click','#add-btn-product-status',function() {//添加
            $("#status-name").val("");
            $("#status-id").val("");
            $("#form-product-status").attr('action', "/addProductStatus");
            var index = layer.open({
                type: 1,
                content: $("#form-status"),
                area: ['300px', '200px'],
            });
        });

        //分类的修改和删除
        table.on('tool(table2)',function(obj){
            var id = obj.data.id;
            $("#form-product-type").attr('action', "/updateProductType");
            if(obj.event === 'setSign2'){//删除
                layer.confirm('确定删除吗？', function(){
                    window.location.href = "deleteType?"+"id="+id;
                });
            }
            if(obj.event === 'setSign1'){//修改
                $("#input3").val(obj.data.productType);
                $("#input4").val(obj.data.id);
                var index = layer.open({
                    type: 1,
                    content: $("#form2"),
                    area: ['300px', '200px'],
                });
            }
        });

        //分类的修改和删除
        table.on('tool(table-status)',function(obj){
            var id = obj.data.id;
            $("#form-product-status").attr('action', "/updateProductStatus");
            if(obj.event === 'setSign2'){//删除
                layer.confirm('确定删除吗？', function(){
                    window.location.href = "deleteProductStatus?"+"id="+id;
                });
            }
            if(obj.event === 'setSign1'){//修改
                $("#status-name").val(obj.data.status);
                $("#status-id").val(obj.data.id);
                var index = layer.open({
                    type: 1,
                    content: $("#form-status"),
                    area: ['300px', '200px'],
                });
            }
        });

    });

</script>
</html>