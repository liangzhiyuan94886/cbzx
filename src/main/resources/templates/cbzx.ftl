<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>测试数据同步展示工具</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${request.contextPath}/static/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${request.contextPath}/static/css/navigation.css"  media="all">
    <script src="${request.contextPath}/static/echarts/echarts.min.js"></script>
    <script src="${request.contextPath}/static/echarts/option.js"></script>
    <script src="${request.contextPath}/static/layui/jquery-1.9.1.min.js" charset="utf-8"></script>
</head>
<body>

<div class='card-holder'>
    <div class='card-wrapper'>
        <a href='#f1' class="card-a">
            <div class='card bg-01'>
                <span class='card-content'>缺陷平均关闭时间</span>
            </div>
        </a>
    </div>
    <div class='card-wrapper'>
        <a href='#f2' class="card-a">
            <div class='card bg-02'>
                <span class='card-content'>缺陷等级分布</span>
            </div>
        </a>
    </div>
    <div class='card-wrapper'>
        <a href='#f3' class="card-a">
            <div class='card bg-03'>
                <span class='card-content'>缺陷燃尽图</span>
            </div>
        </a>
    </div>
    <div class='card-wrapper'>
        <a href='#f4' class="card-a">
            <div class='card bg-04'>
                <span class='card-content'>缺陷表格</span>
            </div>
        </a>
    </div>
    <#--<div class='card-wrapper'>
        <a href='#' class="card-a">
            <div class='card bg-05'>
                <span class='card-content'>区域5</span>
            </div>
        </a>
    </div>
    <div class='card-wrapper'>
        <a href='#' class="card-a">
            <div class='card bg-06'>
                <span class='card-content'>区域6</span>
            </div>
        </a>
    </div>-->
</div>

<a href="/manage" class="layui-btn" target="_blank" style="float: right">项目分类</a>

<div class="layui-container">
    <div class="layui-col-lg12 layui-col-md12">
        <fieldset class="layui-elem-field  ">
            <legend>选择展示的项目</legend>
                <form class="layui-form" action="" lay-filter="example">
                    <div class="layui-form-item">
                        <#--<label class="layui-form-label">复选框</label>-->

                        <div class="layui-inline">
                            <label class="layui-form-label">产品类型</label>
                            <div class="layui-input-inline">

                                <select name="modules" id="" lay-search="" lay-filter="select1">
                                    <option value="">请点击或搜索选择——</option>
                                    <#list productType as p>
                                        <option value= ${p.id} > ${p.productType} </option>
                                    </#list>
                                </select>
                            </div>
                        </div>

                        <div class="layui-input-block" id="product_div">
                            <#list product as p>
                                <input type="checkbox" name="project[]" title=${p.name} value=${p.pid}>
                            </#list>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">起始时间</label>
                        <div class="layui-input-inline">
                            <input type="text" name="date1" id="date1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline">
                            <input type="text" name="date2" id="date2" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
        </fieldset>
    </div>

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;" id="f1">
        <legend>缺陷平均关闭时间</legend>
    </fieldset>

    <div class="layui-row layui-col-space1">
        <div class="layui-col-md12">
            <div class="grid-demo grid-demo-bg1">
                <div id="Chart1" style="width: 1200px;height:400px;"></div>
            </div>
        </div>
    </div>

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;" id="f2">
        <legend>缺陷等级分布</legend>
    </fieldset>

    <div class="layui-row layui-col-space1">
        <div class="layui-col-md12">
            <div class="grid-demo">
                <div id="Chart2" style="width:1200px;height:400px;"></div>
            </div>
        </div>
    </div>

<#--    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;" id="f3">
        <legend>缺陷燃尽图</legend>
    </fieldset>

    <div class="layui-row layui-col-space1">
        <div class="layui-col-md12">
            <div class="grid-demo">
                <div id="Chart4" style="width:1200px;height:400px;"></div>
            </div>
        </div>
    </div>-->


    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;" id="f3">
        <legend>缺陷燃尽图</legend>
    </fieldset>

    <div class="layui-row layui-col-space1">
        <div class="layui-col-md12">
            <div class="grid-demo">
                <div id="Chart3" style="width:1200px;height:400px;"></div>
            </div>
        </div>
    </div>

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;" id="f4">
        <legend>缺陷周报表格</legend>
    </fieldset>
    <form class="layui-form" action="" lay-filter="example">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">产品类型</label>
                <div class="layui-input-inline">
                    <select name="modules" id="" lay-search="" lay-filter="select2">
                        <option value="">请点击或搜索选择——</option>
                        <#list productType as p>
                            <option value= ${p.id} > ${p.productType} </option>
                        </#list>
                    </select>
                </div>
            </div>
        </div>
    </form>
    <div class="layui-row layui-col-space1">
        <div class="layui-col-md12">
            <table class="layui-hide" id="test" lay-filter="test"></table>
        </div>
    </div>
</div>
<#-------------------------以下弹框信息----------------------------->
<#--弹框未解决bug信息-->
<div class="layui-row layui-col-space1" id="table2" style="display: none">
    <div class="layui-col-md12">
        <table class="layui-hide" id="serious" lay-filter="serious"></table>
    </div>
</div>
<#--编辑缺陷周报-->
<div class="layui-row layui-col-space1" id="table3" style="display: none;text-align: center">
    <form class="layui-form" action="/updateIssuesWeekly">
        <div style="margin-top: 20px;margin-left: 20%">
            <table>
                <tr style="height: 50px">
                    <td>本周新增缺陷：</td>
                    <td>
                        <input  type="text" name="newAdd" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                    <td style="padding-left: 30px">本周新增严重缺陷：</td>
                    <td>
                        <input  type="text" name="newAddSerious" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                </tr>
                <tr style="height: 50px">
                    <td>已发现缺陷：</td>
                    <td>
                        <input  type="text" name="discovered" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                    <td style="padding-left: 30px">重新打开缺陷：</td>
                    <td>
                        <input  type="text" name="reopen" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                </tr>
                <tr style="height: 50px">
                    <td>已关闭缺陷：</td>
                    <td>
                        <input  type="text" name="resolved" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                    <td style="padding-left: 30px">未关闭缺陷：</td>
                    <td>
                        <input  type="text" name="unresolved" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                </tr>
                <tr style="height: 50px">
                    <td>到期未关闭缺陷：</td>
                    <td>
                        <input  type="text" name="deadlineUnresolved" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                    <td style="padding-left: 30px">未关闭严重缺陷：</td>
                    <td>
                        <input  type="text" name="unresolvedSerious" lay-verify="required|number" lay-verify="number" autocomplete="off" class="layui-input">
                    </td>
                </tr>
            </table>
        </div>
        <input type="hidden" id="weekId" name="weekId">
        <div class="layui-inline" style="margin-top: 20px"  >
            <button type="submit" class="layui-btn" lay-submit="">保存</button>
        </div>
    </form>
</div>
<script src="${request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    layui.use(['form', 'layedit', 'laydate','table'], function(){
        var form = layui.form,
                layer = layui.layer,
                laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date1'
        });
        laydate.render({
            elem: '#date2'
        });

        var table = layui.table;
        // 初始化缺陷周报表格
        table.render({
            elem: '#test',
            url: '/getBugDistribution', //替换成返回json的接口，下面的json可以去掉
            toolbar: true
            ,title: '缺陷周报表'
            ,totalRow: true
            ,cols: [[//具体参数参考：https://www.layui.com/demo/table/data.html
                {field:'projectName', title:'项目', width:205, fixed: 'left', unresize: true, sort: true}
                ,{field:'newAdd', title:'本周新增缺陷', width:120}
                ,{field:'newAddSerious', title:'本周新增严重缺陷', width:145}
                ,{field:'discovered', title:'已发现缺陷', width:120}
                ,{field:'reopen', title:'重新打开缺陷', width:120}
                ,{field:'resolved', title:'已关闭缺陷', width:120}
                ,{field:'unresolved', title:'未关闭缺陷', width:120}
                ,{field:'deadlineUnresolved', title:'到期未解决缺陷', width:135, style:'cursor: pointer;', event: 'deadlineSign'}
                ,{field:'unresolvedSerious', title:'未关闭严重缺陷', width:135, style:'cursor: pointer;', event: 'seriousSign'}
            ]]
            ,page: true,
            limit:10
            ,response: {
                statusCode: 200 //重新规定成功的状态码为 200，table 组件默认为 0
            },
            parseData: function(res){ //将原始数据解析成 table 组件所规定的数据
                //console.log(res.data )
                return {
                    "code":200, //解析接口状态
                    "msg": '', //解析提示文本
                    "count": res.total, //解析数据长度
                    "data": res.data.list //解析数据列表
                };
            },
        });
        //点击单元格查询缺陷
        table.on('tool(test)', function(obj){//监听单元格点击事件
            var project = obj.data.pid;//项目主键
            if ((obj.event == 'deadlineSign' || obj.event == 'seriousSign') && obj.data.platform == null) {
                $("#weekId").val(obj.data.id);
                $("input[name='newAdd']").val(obj.data.newAdd);
                $("input[name='newAddSerious']").val(obj.data.newAddSerious);
                $("input[name='discovered']").val(obj.data.discovered);
                $("input[name='reopen']").val(obj.data.reopen);
                $("input[name='resolved']").val(obj.data.resolved);
                $("input[name='unresolved']").val(obj.data.unresolved);
                $("input[name='deadlineUnresolved']").val(obj.data.deadlineUnresolved);
                $("input[name='unresolvedSerious']").val(obj.data.unresolvedSerious);
                var index = layer.open({
                    type: 1,
                    title: obj.data.projectName+"————"+"上次更新时间："+obj.data.updateDate,
                    content: $("#table3"),
                    area: ['80%', '400px'],
                    maxmin: true
                });
                return false;
            }
            if (obj.event == 'deadlineSign') {
                var url = 'getDeadlineUnresolvedBug';
                var title = '到期未解决缺陷';
            } if (obj.event == 'seriousSign') {
                var url = 'getUnresolvedSeriousBug';
                var title = '未解决严重缺陷';
            }
            table.render({
                elem: '#serious',
                url: url,
                where: {project: project},
                toolbar: true,
                title: title,
                totalRow: true,
                cols: [[
                    {field:'pid', title:'ID', width:70, fixed: 'left', unresize: true, sort: true,},
                    {field:'title', title:'缺陷标题', width:300, event: 'setSign', style:'cursor: pointer;'},//添加触发标志
                    {field:'steps', title:'缺陷描述', width:430},
                    {field:'openedDate', title:'创建时间', width:150},
                    {field:'openedBy', title:'测试负责人', width:150},
                    {field:'assignedTo', title:'指派给', width:150},
                    {field:'platform', title:'平台来源', width:100},
                ]],
                page: true,
                limit:10,
                response: {
                    statusCode: 200
                },
                parseData: function(res){
                    return {
                        "code":200, //解析接口状态
                        "msg": '', //解析提示文本
                        "count": res.total, //解析数据长度
                        "data": res.data.list //解析数据列表
                    };
                },
            });
            var index = layer.open({//查询出严重缺陷放到弹框
                type: 1,
                title: obj.data.projectName,
                content: $("#table2"),
                area: ['80%', '400px'],
                maxmin: true
            });
        });
        //在弹框中点击标题跳转平台
        layui.use('table', function(){
            var table = layui.table;
            table.on('tool(serious)', function(obj){
                var pid = obj.data.pid;//缺陷id
                var project = obj.data.project;//项目主键
                var platform = obj.data.platform;
                var title = obj.data.title;
                $.ajax({
                    type : "post",
                    dataType : "json",
                    data:{
                        project: project//根据项目主键查询缺陷地址
                    },
                    url : "/getBugAddress",
                    success : function(data) {
                        var url = data.address;
                        if (url == "") {
                            layer.msg("请先设置缺陷管理地址！");
                        }else {
                            if (platform == "zt") {
                                window.open(url + pid);
                            }else if(platform == "jira") {
                                window.open(url + title);
                            }else {
                                layer.msg("这个还没集成！");
                            }
                        }
                    },
                });
            });
        });
        //选择项目类触发事件
        form.on('select(select1)',function(data){
            var id = data.value;
            $.ajax({//查询对应类型的项目
                type : "post",
                dataType : "json",
                data:{
                    id: id
                },
                url : "/getProductByType",
                success : function(data) {
                    var listHtml = '';
                    for (var i = 0;i<data.length;i++) {
                        listHtml += "<input type='checkbox' name='project[]' title='"+ data[i].name+"' value='"+ data[i].pid+"' >";
                    }
                    $("#product_div").html(listHtml);//把查询数据放到区域
                    form.render();//重新渲染
                }
            });
        });
        //选择项目类触发事件,按分类展示表格
        form.on('select(select2)',function(data){
            var id = data.value;
            table.render({
                elem: '#test',
                url: '/getBugDistribution',
                where: {type: id},
                toolbar: true
                ,title: '缺陷周报表'
                ,totalRow: true
                ,cols: [[
                    {field:'projectName', title:'项目', width:205, fixed: 'left', unresize: true, sort: true}
                    ,{field:'newAdd', title:'本周新增缺陷', width:120}
                    ,{field:'newAddSerious', title:'本周新增严重缺陷', width:145}
                    ,{field:'discovered', title:'已发现缺陷', width:120}
                    ,{field:'reopen', title:'重新打开缺陷', width:120}
                    ,{field:'resolved', title:'已关闭缺陷', width:120}
                    ,{field:'unresolved', title:'未关闭缺陷', width:120}
                    ,{field:'deadlineUnresolved', title:'到期未关闭缺陷', width:135, style:'cursor: pointer;', event: 'deadlineSign'}
                    ,{field:'unresolvedSerious', title:'未关闭严重缺陷', width:135, style:'cursor: pointer;', event: 'seriousSign'}
                ]]
                ,page: true,
                limit:10
                ,response: {
                    statusCode: 200
                },
                parseData: function(res){
                    return {
                        "code":200, //解析接口状态
                        "msg": '', //解析提示文本
                        "count": res.total, //解析数据长度
                        "data": res.data.list //解析数据列表
                    };
                },
            });
        });


        $=layui.jquery;
        //监听提交
        form.on('submit(demo1)', function(data){
            var pids = [];
            // 获取勾选的项目pid
            for(key in data.field){
                if (key.indexOf("project") > -1) {
                    var pid = data.field[key];
                    var pid2 = "";
                    for (var i = 0; i<pid.length; i++) {//处理千分号
                        if (pid.substring(i, i + 1) != ",") {
                            pid2 += pid.substring(i, i + 1);
                        }
                    }
                   // debugger;
                    pids.push(pid2);
                }
            }
            //查询缺陷等级分布
        $.ajax({
            type : "post",
            dataType : "json",
            data:{
                pids: JSON.stringify(pids),
                startTime: $("#date1").val(),
                endTime: $("#date2").val()
            },
            url : "/getBug",
            success : function(data) {
                var names = [];
                var lv1 = [];//紧急
                var lv2= [];//严重
                var lv3= [];//普通
                var lv4 = [];//轻微
                var lv5 = [];
                for(var i = 0;i<data.length;i++){
                   names.push(data[i][0].projectName);
                        for(var j = 0;j < data[i].length; j++){
                            lv1.push(0);
                            lv2.push(0);
                            lv3.push(0);
                            lv4.push(0);
                            lv5.push(0);
                            if(data[i][j].severity == "1"){
                                lv1[i] = data[i][j].count;
                            }else if(data[i][j].severity == "2") {
                                lv2[i] = data[i][j].count;
                            }else if(data[i][j].severity == "3"){
                                lv3[i] = data[i][j].count;
                            }else if(data[i][j].severity == "4"){
                                lv4[i] = data[i][j].count;
                            }else{
                                lv5[i] = data[i][j].count;//等级5
                            }
                        }
                }
                var newlv4 = lv4.map(function(value,index){return value+lv5[index]});//等级5的也算等级4里面
                var Chart2 = echarts.init(document.getElementById('Chart2'));
                Chart2.setOption(stackedbar(names,lv1,lv2,lv3, newlv4));
            }
        });

            //查询bug平均关闭时间
        $.ajax({
            type : "post",
            dataType : "json",
            data:{
                pids: JSON.stringify(pids),
                startTime: $("#date1").val(),
                endTime: $("#date2").val()
            },
            url : "/getBugSpendDate",
            success : function(data) {
                var names = [];
                var dataY = [];
                for(var i = 0;i<data.length;i++){
                    names.push(data[i].projectName);
                    dataY.push(data[i].average);
                }
                var Chart1 = echarts.init(document.getElementById('Chart1'));
                Chart1.setOption(simpleBar(names,dataY));
            }
        });

/*        $.ajax({//查询bug时间段分布曲线图
                type : "post",
                dataType : "json",
                data:{
                    pids: JSON.stringify(pids),
                    startTime:$("#date1").val(),
                    endTime:$("#date2").val()
                },
                url : "/getBugDistributionByMonth",
                success : function(data) {
                    var Chart4 = echarts.init(document.getElementById('Chart4'));
                    Chart4.setOption(stackedLine(data.legend,data.xAxis,data.series));
                }
            });*/

            //查询截至当日未解决缺陷数量（复盘）
         $.ajax({
                type : "post",
                dataType : "json",
                data:{
                    pids: JSON.stringify(pids),
                    startTime:$("#date1").val(),
                    endTime:$("#date2").val()
                },
                url : "/getBugReplay",
                success : function(data) {
                    // console.log(data)
                    var Chart3 = echarts.init(document.getElementById('Chart3'));
                    Chart3.setOption(replayLine(data.legend,data.xAxis,data.series));
                }
            });

        return false;
        });


        // 基于准备好的dom，初始化echarts实例
        var Chart1 = echarts.init(document.getElementById('Chart1'));
        var Chart2 = echarts.init(document.getElementById('Chart2'));
        var Chart3 = echarts.init(document.getElementById('Chart3'));
        // var Chart4 = echarts.init(document.getElementById('Chart4'));

        // 使用刚指定的配置项和数据显示图表。
        Chart1.showLoading({text: '暂无数据'});
        Chart2.showLoading({text: '暂无数据'});
        Chart3.showLoading({text: '暂无数据'});
        // Chart4.showLoading({text: '暂无数据'});
    });


</script>
<#--日期格式化方法-->
<script type="text/javascript">
    function formatTime(date) {
        var year = date.getFullYear();
        var month = date.getMonth()+1, month = month < 10 ? '0' + month : month;
        var day = date.getDate(), day =day < 10 ? '0' + day : day;
        return year + '-' + month + '-' + day;
    }
</script>
<#--初始化加载默认展示项目-->
<script type="text/javascript">
    var pids = [];
    $.ajax({//先查出默认展示的项目pid
        type : "post",
        dataType : "json",
        url : "/getDefaultDisplay",
        success : function (data) {
            for (var i = 0;i<data.length;i++) {
                pids.push(data[i]);
            }
        }
    });
    var date = new Date();//得到当前日期endTime
    var date2 = formatTime(date);//格式化2019-08-01
    date.setDate(date.getDate()-6);//得到前第7天日期startTime
    var date1 = formatTime(date);
    layui.use(['form', 'layedit', 'laydate','table'], function(){
        //查询bug平均关闭时间
        $.ajax({
            type : "post",
            dataType : "json",
            data:{
                pids: JSON.stringify(pids),
                startTime: date1,
                endTime: date2,
            },
            url : "/getBugSpendDate",
            success : function(data) {
                var names = [];
                var dataY = [];
                for(var i = 0;i<data.length;i++){
                    names.push(data[i].projectName);
                    dataY.push(data[i].average);
                }
                var Chart1 = echarts.init(document.getElementById('Chart1'));
                Chart1.setOption(simpleBar(names,dataY));
            }
        });

        //查询缺陷等级分布
        $.ajax({
            type : "post",
            dataType : "json",
            data:{
                pids: JSON.stringify(pids),
                startTime: date1,
                endTime: date2,
            },
            url : "/getBug",
            success : function(data) {
                var names = [];
                var lv1 = [];//紧急
                var lv2= [];//严重
                var lv3= [];//普通
                var lv4 = [];//轻微
                var lv5 = [];
                for(var i = 0;i<data.length;i++){
                    names.push(data[i][0].projectName);
                    for(var j = 0;j < data[i].length; j++){
                        lv1.push(0);
                        lv2.push(0);
                        lv3.push(0);
                        lv4.push(0);
                        lv5.push(0);
                        if(data[i][j].severity == "1"){
                            lv1[i] = data[i][j].count;
                        }else if(data[i][j].severity == "2") {
                            lv2[i] = data[i][j].count;
                        }else if(data[i][j].severity == "3"){
                            lv3[i] = data[i][j].count;
                        }else if(data[i][j].severity == "4"){
                            lv4[i] = data[i][j].count;
                        }else{
                            lv5[i] = data[i][j].count;//等级5
                        }
                    }
                }
                var newlv4 = lv4.map(function(value,index){return value+lv5[index]});//等级5的也算等级4里面
                var Chart2 = echarts.init(document.getElementById('Chart2'));
                Chart2.setOption(stackedbar(names,lv1,lv2,lv3, newlv4));
            }
        });

        //查询截至当日未解决缺陷数量（复盘）
        $.ajax({
            type : "post",
            dataType : "json",
            data:{
                pids: JSON.stringify(pids),
                startTime: date1,
                endTime: date2,
            },
            url : "/getBugReplay",
            success : function(data) {
                // console.log(data)
                var Chart3 = echarts.init(document.getElementById('Chart3'));
                Chart3.setOption(replayLine(data.legend,data.xAxis,data.series));
            }
        });
    });
</script>
</body>
</html>