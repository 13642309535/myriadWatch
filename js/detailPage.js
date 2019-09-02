// 获取数据渲染列表
class detailPage {
    constructor(data) {
        this.data = data;
    }
    init() {
        this.createHTML()

    }
    createHTML() {


        let arrImg = this.data[0].img.split("&");


        let allLiString = "";
        $(arrImg).each(function (index, item) {


            let liString = ` <li class="tb-selected">
            <div class="tb-pic tb-s40">
                <a href="#">
                <img src="${item}"  alt="${item}"  rel="${item}"  class="jqzoom"/>
                </a>
            </div>
        </li>`;

            allLiString += liString;
        })


        let html = `<div class="content">

        <div class="box">

            <div class="tb-booth tb-pic tb-s310">

                <a href="">
                <img src="${arrImg[0]}"  alt="${arrImg[0]}"  rel="${arrImg[0]}"  class="jqzoom"/>
                </a>

            </div>

            <ul class="tb-thumb" id="thumblist">
            ${allLiString}
            </ul>

        </div>

        <div class="right fr">
            <h3>${this.data[0].s_goods_name}</h3>
            <p class="p1">机芯稳定性、精度、动力储存全面提升 力洛克T41.1.483.33全新升级版
                <a href="">了解更多>></a>
            </p>
            <div class="detail1">
                <span>型号:T006.407.11.033.00</span>
                <span>编号:62520</span>
                <span>品牌:${this.data[0].s_shop}</span>
                <span>销量:6633</span>
            </div>


            <div class="price1">

                <div class="price1A">
                    <span class="span1">分期</span>

                    <div class="fenqi">
                        <em>￥</em>
                        <span class="span2">${this.data[0].fenqi_price}</span>
                        <span class="span3">x12期</span>
                    </div>


                    <span class="free">
                        <i></i>
                        免息免手续费
                    </span>
                </div>

                <div class="price1B">
                    <span class="span1">万表价</span>
                    <span class="span2">${this.data[0].s_price}</span>
                    <span class="span3">市场价</span>
                    <span class="span4">${this.data[0].market_price}</span>
                </div>

                <div class="price1C">
                    <span class="span1">领劵</span>
                    <span class="span2">9.5折英雄折扣券</span>
                    <span class="span3">更多</span>
                </div>
            </div>

            <table class="table1">
                <tr>
                    <th>配送</th>
                    <td>
                        <span class="span1">（顺丰包邮）</span>
                        <span> 16:45前支付，预计1-3个工作日内发货，支持货到付款 </span>
                    </td>
                </tr>
                <tr>
                    <th>承诺</th>
                    <td>
                        <ul>
                            <li><i></i><span>正品保障</span></li>
                            <li><i></i><span>正规发票</span></li>
                            <li><i></i><span>假一赔三</span></li>
                            <li><i></i><span>7天退换</span></li>
                            <li><i></i><span>全球联保</span></li>
                            <li><i></i><span>免息分期</span></li>
                            <li><i></i><span>实体店体验</span></li>
                            <li><i></i><span>闪电发货</span></li>
                            <li><i></i><span>货到付款</span></li>
                        </ul>


                    </td>
                </tr>

            </table>

            <div class="server1 clearfloat">
                <p class="p1 fl">服务</p>

                <p class="p2 fl">
                    <a href="">
                        <span>“特惠” 购表延保服务</span>
                        <i></i>
                    </a>
                    <a href="">
                        <span>100%正品二手表库</span>
                        <i></i>
                    </a>
                </p>
            </div>

            <dl class="style1 clearfloat">
                <dt>款式</dt>
                <dd>
                    <ul>
                        <li>

                            <img src="https://image6.wbiao.co/shop/6e8879f27e064088a0bc905ec0c6a350.jpg?x-oss-process=image/resize,w_50,h_50"
                                alt="">
                            <span>钢 黑色 PVD镀金 不锈钢</span>
                        </li>
                        <!--  -->
                        <li>

                            <img src="https://image6.wbiao.co/shop/ab4a1e3b1d2f422b9ce85986b9aba946.jpg?x-oss-process=image/resize,w_50,h_50"
                                alt="">
                            <span>真皮 其它</span>
                        </li>
                        <!--  -->
                        <li>

                            <img src="https://image6.wbiao.co/shop/81d6b160852b458b9e0f070c53bf868f.jpg?x-oss-process=image/resize,w_50,h_50"
                                alt="">
                            <span>真皮 黑色 牛皮</span>
                        </li>
                        <!--  -->
                        <li>

                            <img src="https://image6.wbiao.co/shop/027797e77336470b994ceaa36812fbec.jpg?x-oss-process=image/resize,w_50,h_50"
                                alt="">
                            <span>真皮 黑色 牛皮</span>
                        </li>
                        <!--  -->
                        <li>

                            <img src="https://image6.wbiao.co/shop/00027ee065b1490abbabb2d21642afe5.jpg?x-oss-process=image/resize,w_50,h_50"
                                alt="">
                            <span>钢 黑色 精钢</span>
                        </li>
                        <!--  -->
                        <li>

                            <img src="https://image6.wbiao.co/shop/174b825c83bc4ac3bdc4e5a7d90db9a6.jpg?x-oss-process=image/resize,w_50,h_50"
                                alt="">
                            <span>真皮 银色</span>
                        </li>
                        <!--  -->
                        <li class="active">

                            <img src="https://image6.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,w_50,h_50"
                                alt="">
                            <span>钢 银色 精钢</span>
                            <i></i>
                        </li>
                    </ul>
                </dd>
            </dl>

            <div class="number">

                <span class="span1">数量</span>
                <span class="span2">-</span>
                <input type="text" value="1">
                <span class="span3">+</span>
            </div>

            <div class="buy clearfloat">
                <button class="button1 fl">立即购买</button>
                <button class="button2 fl">加入购物车</button>

                <div class="phoneBuy fl">
                    <i></i>
                    <span>手机购买</span>
                </div>

            </div>
        </div>
    </div>`
        $(".detailsPage5").html(html);


    }
}