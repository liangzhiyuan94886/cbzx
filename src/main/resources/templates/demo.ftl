<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui+echarts demo</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${request.contextPath}/static/layui/css/layui.css"  media="all">
    <script src="${request.contextPath}/static/echarts/echarts.min.js"></script>
    <script src="${request.contextPath}/static/echarts/option.js"></script>
    <script src="/layui/jquery-1.9.1.min.js" charset="utf-8"></script>
</head>
<body>

<div class="layui-container">
    <div class="layui-col-lg12 layui-col-md12">
        <fieldset class="layui-elem-field  ">
            <legend>选择展示的项目</legend>
                <form class="layui-form" action="" lay-filter="example">
                    <div class="layui-form-item">
                        <label class="layui-form-label">复选框</label>
                        <div class="layui-input-block">

                            <#list product as p>
                                <input type="checkbox" name="project[]" title=${p.name} value=${p.pid}>
                            </#list>

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

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
        <legend>区域一</legend>
    </fieldset>

    <div class="layui-row layui-col-space1">
        <div class="layui-col-md6">
            <div class="grid-demo grid-demo-bg1">
                <div id="Chart1" style="width: 600px;height:400px;"></div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="grid-demo">
                <div id="Chart2" style="width: 600px;height:400px;"></div>
            </div>
        </div>
    </div>

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
        <legend>区域二</legend>
    </fieldset>

    <div class="layui-row layui-col-space1">
        <div class="layui-col-md6">
            <div class="grid-demo grid-demo-bg1">
                <div id="Chart3" style="width: 600px;height:400px;"></div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="grid-demo">
                <div id="Chart4" style="width: 600px;height:400px;"></div>
            </div>
        </div>
    </div>

</div>
<script src="${request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
                ,layer = layui.layer,
        $=layui.jquery;

        //监听提交
        form.on('submit(demo1)', function(data){
            console.log(data);
            /*layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })*/
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            var pids = [];
            for(key in data.field){
                console.log(data.field[key]);
                pids.push(data.field[key]);
            }
            // alert(pids);
            //return false;
        //});
        $.ajax({//查询bug数量
            type : "post",
            dataType : "json",
            data:{
                pids: JSON.stringify(pids)
            },
            url : "/getBug",
            success : function(data) {
                var names = [];
                var lv1 = [];//紧急
                var lv2= [];//严重
                var lv3= [];//普通
                var lv4 = [];//轻微

                console.log(data);
                for(var i = 0;i<data.length;i++){

                   names.push(data[i][0].title);
                    /*if(data[i][0].notHaveData==false){
                        lv1.push(0);
                        lv2.push(0);
                        lv3.push(0);
                        lv4.push(0);
                        continue;
                    }*///else{
                        for(var j = 0;j < data[i].length; j++){
                            lv1.push(0);
                            lv2.push(0);
                            lv3.push(0);
                            lv4.push(0);

                            if(data[i][j].severity == "1"){
                                lv1[i] = data[i][j].count;
                                //lv1.push(data[i][j].count);
                            }else if(data[i][j].severity == "2") {
                                lv2[i] = data[i][j].count;
                               // lv2.push(data[i][j].count);
                            }else if(data[i][j].severity == "3"){
                                lv3[i] = data[i][j].count;
                                //lv3.push(data[i][j].count);
                            }else if(data[i][j].severity == "4"){
                                lv4[i] = data[i][j].count;
                                //lv4.push(data[i][j].count);
                            }else{

                            }
                        }
                   // }

                }
                var Chart2 = echarts.init(document.getElementById('Chart2'));
                Chart2.setOption(stackedbar(names,lv1,lv2,lv3, lv4));
            }
        });

        $.ajax({//查询bug平均关闭时间
            type : "post",
            dataType : "json",
            data:{
                pids: JSON.stringify(pids)
            },
            url : "/getBugSpendDate",
            success : function(data) {
                console.log(data);
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
        return false;
        });


        // 基于准备好的dom，初始化echarts实例

        var Chart3 = echarts.init(document.getElementById('Chart3'));
        var Chart4 = echarts.init(document.getElementById('Chart4'));

        // 使用刚指定的配置项和数据显示图表。


        Chart3.setOption(simplePie());
        Chart4.setOption(stackedLine());

    });


</script>

</body>
</html>