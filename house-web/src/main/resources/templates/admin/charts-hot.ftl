<@admin_common.meta/>
<title>房产热度3D南丁格尔玫瑰图</title>
<script type="text/javascript" src="/static/lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript" src="/static/lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
<script type="text/javascript" src="/static/lib/hcharts/Highcharts/5.0.6/js/highcharts-3d.js"></script>
<script type="text/javascript" src="/static/lib/echarts/3.4.0/echarts.js"></script>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 统计管理 <span
        class="c-gray en">&gt;</span> 房产热度3D南丁格尔玫瑰图 <a class="btn btn-success radius r"
                                                       style="line-height:1.6em;margin-top:3px"
                                                       href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>
<div id="main" style="width: 1700px;height:900px;"></div>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));

    <#--option = {-->
    <#--    title : {-->
    <#--        text: '房产热度',-->
    <#--        subtext: '3D南丁格尔玫瑰图',-->
    <#--        x:'center'-->
    <#--    },-->
    <#--    tooltip : {-->
    <#--        trigger: 'item',-->
    <#--        formatter: "{a} <br/>{b} : {c} ({d}%)"-->
    <#--    },-->
    <#--    legend: {-->
    <#--        x : 'center',-->
    <#--        y : 'bottom',-->
    <#--        data:['rose1','rose2','rose3','rose4','rose5','rose6','rose7','rose8']-->
    <#--    },-->
    <#--    toolbox: {-->
    <#--        show : true,-->
    <#--        feature : {-->
    <#--            mark : {show: true},-->
    <#--            dataView : {show: true, readOnly: false},-->
    <#--            magicType : {-->
    <#--                show: true,-->
    <#--                type: ['pie', 'funnel']-->
    <#--            },-->
    <#--            restore : {show: true},-->
    <#--            saveAsImage : {show: true}-->
    <#--        }-->
    <#--    },-->
    <#--    calculable : true,-->
    <#--    series : [-->
    <#--        {-->
    <#--            name:'房源热度',-->
    <#--            type:'pie',-->
    <#--            radius : [30, 110],-->
    <#--            center : ['30%', '50%'],-->
    <#--            roseType : 'radius',-->
    <#--            label: {-->
    <#--                normal: {-->
    <#--                    show: false-->
    <#--                },-->
    <#--                emphasis: {-->
    <#--                    show: true-->
    <#--                }-->
    <#--            },-->
    <#--            lableLine: {-->
    <#--                normal: {-->
    <#--                    show: false-->
    <#--                },-->
    <#--                emphasis: {-->
    <#--                    show: true-->
    <#--                }-->
    <#--            },-->
    <#--            data:[-->
    <#--           <#list hotHouses as house>-->
    <#--                {value:${house.hot},name: '${(house.name)!}'},-->
    <#--           </#list>-->
    <#--            ]-->
    <#--        },-->
    <#--        {-->
    <#--            name:'房源热度',-->
    <#--            type:'pie',-->
    <#--            radius : [30, 110],-->
    <#--            center : ['75%', '50%'],-->
    <#--            roseType : 'area',-->
    <#--            data:[-->
    <#--                 <#list hotHouses as house>-->
    <#--                {value:${house.hot},name: '${(house.name)!}'},-->
    <#--                 </#list>-->
    <#--            ]-->
    <#--        }-->
    <#--    ]-->
    <#--};-->



    option = {
        backgroundColor: '#2c343c',

        title: {
            text: 'Customized Pie',
            left: 'center',
            top: 20,
            textStyle: {
                color: '#ccc'
            }
        },

        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },

        visualMap: {
            show: false,
            min: 80,
            max: 600,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series: [
            {
                name: '访问来源',
                type: 'pie',
                radius: '55%',
                center: ['50%', '50%'],
                data: [
                    {value: 335, name: '北京市'},
                    {value: 310, name: '深圳市'},
                    {value: 274, name: '杭州市'},
                    {value: 235, name: '广州市'},
                    {value: 400, name: '上海市'}
                ].sort(function (a, b) { return a.value - b.value; }),
                roseType: 'radius',
                label: {
                    color: 'rgba(255, 255, 255, 0.3)'
                },
                labelLine: {
                    lineStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                },
                itemStyle: {
                    color: '#c23531',
                    shadowBlur: 200,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                },

                animationType: 'scale',
                animationEasing: 'elasticOut',
                animationDelay: function (idx) {
                    return Math.random() * 200;
                }
            }
        ]
    };


    myChart.setOption(option);
</script>
<@admin_common.footer/>
</body>
</html>