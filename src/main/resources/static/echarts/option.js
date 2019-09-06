function stackedbar(projectName,dataUrgent,dataSerious,dataOrdinary,dataSlight){
    var option = {//缺陷等级分布
        title: {
            text: ''
        },
        tooltip : {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar', 'tiled','stack']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        legend: {
            data: ['紧急', '严重','普通','轻微']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis:  {
            type: 'category',
            data: projectName//项目名称
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name: '紧急',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: ''
                    }
                },
                data: dataUrgent//紧急缺陷
            },
            {
                name: '严重',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: ''
                    }
                },
                data: dataSerious//严重缺陷
            },
            {
                name: '普通',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: ''
                    }
                },
                data: dataOrdinary//普通缺陷
            },
            {
                name: '轻微',
                type: 'bar',
                stack: '总量',
                label: {
                    normal: {
                        show: false,
                        position: ''
                    }
                },
                data: dataSlight//轻微缺陷
            }
        ]
    };
    return option;
}

function simpleBar(names,dataY) {//查询bug平均关闭时间
    var option = {
        title: {
            text: ''
        },
        tooltip: {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar', 'tiled','stack']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        legend: {
            data:['时间/h'],
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
            data: names
        },
        yAxis: {},
        series: [{
            name: '时间/h',
            type: 'bar',
            label: {
                normal: {
                    show: true,
                    position: 'top'
                }
            },
            data: dataY
        }]
    };
    return option;
}


/*function stackedLine(projectNmme,dataX,dataY){//按月/天统计缺陷分布
    var option = {
        title: {
            text: ''
        },
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data: projectNmme,
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar', 'tiled','stack']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : dataX
            }
        ],
        yAxis : [
            {
                type : 'value',
            }
        ],
        series : dataY,

    };
    return option;
}*/

function replayLine(projectNmme,dataX,dataY){//复盘缺陷
    var option = {
        title: {
            text: ''
        },
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data: projectNmme,
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar', 'tiled','stack']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : dataX
            }
        ],
        yAxis : [
            {
                type : 'value',
            }
        ],
        series : dataY,

    };
    return option;
}

function timeliness(projectNmme,dataX,dataY){//缺陷及时性
    var option = {
        title: {
            text: ''
        },
        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data: projectNmme,
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar', 'tiled','stack']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : dataX
            }
        ],
        yAxis : [
            {
                type : 'value',
            }
        ],
        series : dataY,

    };
    return option;
}