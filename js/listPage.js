// 获取数据渲染列表
class listPage {
    constructor(data) {
        this.data = data;
    }
    init() {
        this.createHTML()

    }
    createHTML() {
        let allLiString = "";

        $(this.data).each(function (index, item) {

            item.schoolOpenPrice = item.schoolOpenPrice.slice(0, -3) + "," + item.schoolOpenPrice.slice(-3);
            item.s_price = item.s_price.slice(0, -3) + "," + item.s_price.slice(-3);

            // 销量左边是否有特点
            let italic = item.goods_sale1 != "" ? "/" : "";

            // 是否有开学啦优惠图片
            let schoolOpenImg = item.schoolOpenImg != "" ? `<img src=${item.schoolOpenImg} alt=""
            class="schoolOpenImg">` : ""

            let liString = `  <li data_goodid=${item.goodsID}>
                                <a href="" class="aTop">
                                    <img src=${item.imgGood}
                                        alt="" class="imgGood">
                                    <div class="schoolOpen
                                    ">
                                       ${schoolOpenImg} 
                                           
                                        <span>￥<em>${item.schoolOpenPrice} </em></span>

                                    </div>
                                </a>
                                <div class="goodsText">
                                    <p class="p1">
                                        <em class="emMonth">月付</em>
                                        <span class="fenqi_price"><em>￥</em>${item.fenqi_price} </span>
                                        <span class="s_price">¥<em>${item.s_price} </em></span>
                                    </p>

                                    <a class="aGoodsName" href="">${item.s_goods_name} </a>

                                    <div class="goods_sale">
                                        <span>${item.goods_sale1} </span> ${italic
                                        }
                                        <em>销量${item.goods_sale2} </em>
                                    </div>

                                    <a href="" class="aShop">${item.s_shop} </a>

                                    <p class="p2"> <span>免息分期</span> </p>

                                    <div class="liHover">
                                        <a href="" class="addCollect
                                        ">加入收藏</a>
                                        <a href="collected
                                        ">已收藏</a>
                                        <a href="" class="addCar">加入购物车</a>
                                    </div>


                                </div>

                            </li>`;
            allLiString += liString;

        })
        $("#list1").html(allLiString);



    }
}

// 加载head3和点击搜索
var search = "";
$("#head3").load("head3.html", function name(params) {


    $(".head3 button").click(function name(params) {

        search = $(this).prev().find("input").val();

        send(type1, pagenum, order, search);

    })

});
var pagenum = 1;

// 初始化
send("默认", 1);

var type1 = "默认";

// 点击默认
$("#default").click(function name(params) {

    // 标签样式
    $(".listPage2 .middle .left2 a").removeClass("active");
    $(this).find("a").addClass("active");

    type1 = "默认";
    event.preventDefault();

    search = "";
    send(type1, pagenum, order, search);


});

// 点击价格
var order = "";
$(".price_order").click(function () {

    event.preventDefault();

    type1 = "价格"
    // 改标签样式
    $(".listPage2 .middle .left2 a").removeClass("active");

    $(this).find("a").addClass("active");

    if (order == "") {
        order = "asc";
    } else if (order == "asc") {
        order = "desc"
    } else {
        order = "asc"
    }
    search = "";

    send(type1, pagenum, order, search)
})

// 点击销量优先
var order = "";
$("#salesVolume").click(function () {

    event.preventDefault();

    type1 = "销量";
    order = "desc";

    // 改标签样式
    $(".listPage2 .middle .left2 a").removeClass("active");
    $(this).find("a").addClass("active");

    search = "";
    send(type1, pagenum, order, search)
})

// 点击筛选
var origin = "";
var end = "";

// 点击类型发送网络请求获取对应数据并渲染列表和页码
function send(type1, pagenum, order, search) {

    $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://127.0.0.1/myriadWatch/api/listpage.php",
        data: {
            "type1": type1,
            "pagenum": pagenum,
            "order": order,
            "search": search,
        },
        success: response => {
            console.log(response);


            // 根据商品数据渲染商品列表
            (new listPage(response.data)).init();

            // 根据页码数据渲染页码
            let total = response.total;

            PageTurn(total);

            // 页码初始化样式
            $("#page span").eq(0).addClass("active");
            $("#page span:gt(3)").hide();
            $("#page span").eq(3).after("<span>...</span>");
            $("#page span:last").show();

            // 上一页隐藏
            $("#pgup").hide();


            // 页码、上下页添加点击事件
            click1();
            click2();
            pgupClass();
            pgdnClass();
            // PageTurn2()

            jump();
        }
    })
}

// 点击页码
function click1() {

    $("#page span").click(function () {
        // 页码样式切换

        $(this).addClass("active").siblings().removeClass("active");
        pagenum = $(this).text();
        send2(type1, pagenum, order, search);
    });
}

// 上一页点击事件 1页码变化   2渲染数据
function click2() {
    $("#pgup").click(function () {

        // 改变上一个页码样式
        $("#page .active").prev("span").addClass("active").siblings().removeClass("active")

        // 上一页样式变化
        pgupClass();

        // 下一页样式变化
        pgdnClass();

        // PageTurn2()

        let pagenum = $("#page .active").html();
        pagenum--;
        send2(type1, pagenum, order, search);

    })


    // 下一页点击事件  1页码变化   2渲染数据
    $("#pgdn").click(function () {

        // 点击下一页渲染数据
        let pagenum = $("#page .active1").html();


        // 改变下一个页码样式
        $("#page .active").next("span").addClass("active").siblings().removeClass("active")

        // 下一页样式变化
        pgdnClass();

        // 上一页样式变化
        pgupClass();


        pagenum++;
        send2(type1, pagenum, order, search);


    })

}


// 获取数据并渲染列表(点击页码、上下页时)
function send2(type1, pagenum, order, search) {

    $.ajax({
        type: "POST",
        dataType: "json",
        url: "http://127.0.0.1/myriadWatch/api/listpage.php",
        data: {
            "type1": type1,
            "pagenum": pagenum,
            "order": order,
            "search": search,
        },
        success: response => {
            console.log(response);

            (new listPage(response.data)).init();
            pgupClass();
            pgdnClass();
            // PageTurn2();
            jump();

        }
    })
}

// 根据总商品数渲染页码
var PageNum = ""

function PageTurn(total) {
    PageNum = Math.ceil(total / 16);
    let html1 = '';
    for (let i = 1; i <= PageNum; i++) {
        html1 = html1 + ` <span class="page">${i}</span>`;

    }
    let html2 = `
<i id="pgup" class="pageTurn"></i>
<div id="page">${html1}</div>

<i id="pgdn" class="pageTurn"></i>
`;
    $("#pageNumber").html(html2);
}

// 根据当前页码调整页码自身样式    失败了

function PageTurn2() {

    let activenum = $("#page .active").html();


    $("#page span").hide();

    let activenumBack = activenum - 2;
    if ($("#page span").eq(activenumBack) > 1) {
        $("#page span").eq(0).show();
    }
    for (let i = 1; i++, activenumBack++; i < 7) {

        $("#page span").eq(activenumBack).show();
    }

    if ($("#page span").eq(activenumBack) < PageNum) {
        $("#page span").eq(PageNum - 1).show();

    }
}


// 左箭头样式根据当前页码变化
function pgupClass(params) {

    let activenum = $("#page .active").html();
    if (activenum == 1) {
        $("#pgup").hide();
    } else {
        $("#pgup").show();
    };


}

// 右箭头样式根据当前页码变化
function pgdnClass(params) {

    let activenum = $("#page .active").html();
    if (activenum == PageNum) {
        $("#pgdn").hide();
    } else {
        $("#pgdn").show();

    }
}

// ----------------------------------点击列表跳到详情页
let data_goodid = ""
let random = Math.random()
function jump(params) {

    $("#list1 .aTop").click(function name(e) {
        e.preventDefault();
        data_goodid = $(this).parent().attr("data_goodid");
        window.location = `http://127.0.0.1/myriadWatch/html/detailsPage.html?data_goodid=${data_goodid}&random=${random}`;
    })

    $("#list1 .aGoodsName").click(function name(e) {
        e.preventDefault();
        data_goodid = $(this).parent().attr("data_goodid");
        window.location = `http://127.0.0.1/myriadWatch/html/detailsPage.html?data_goodid=${data_goodid}&random=${random}`;
    })

}