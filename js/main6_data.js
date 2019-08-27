 // 拿数据代码
 var arrT = [];
 $(".guess_like_slider a").each(function name(index, item) {
     let obj = {};
     obj.imgSrc = $(item).find(".g_img img").attr("src");
     obj.title = $(item).find(".p1").html();
     obj.title2 = $(item).find(".p2").html();
     obj.fenqi_price = $(item).find(".fenqi_price").html();
     obj.price = $(item).find(".wb_price").html();
     arrT.push(obj);
 })
 console.log(JSON.stringify(arrT));

 let main6_data = [{
     "imgSrc": "//image6.wbiao.co/shop/f29bae2deb9143cab946f7327d677e59.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "法国赫柏林",
     "title2": "Perles 珍珠系列石英女表",
     "fenqi_price": "¥316.7",
     "price": "¥3800"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/3dadc3cefd244fe689fbafd54afc2b37.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士万国",
     "title2": "飞行员系列机械男表",
     "fenqi_price": "¥3010",
     "price": "¥36120"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/37b113a4f61d48bbaf5652c1b504c0b4.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士积家",
     "title2": "北宸系列自动机械男表",
     "fenqi_price": "¥7933.3",
     "price": "¥95200"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201611_14_NAI16520G_47309.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "美国诺帝卡",
     "title2": "系列石英男表",
     "fenqi_price": "¥91.8",
     "price": "¥1102"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201708_11_CAR2A1K_BA0703_81210.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士泰格豪雅",
     "title2": "卡莱拉CARRERA系列机械男表",
     "fenqi_price": "¥2986.7",
     "price": "¥35840"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201607_25_16156546_10512.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士迪沃斯",
     "title2": "Pilot领航系列自动机械男表",
     "fenqi_price": "¥441.7",
     "price": "¥5300"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/40e232bde9714fb2b4bf9ae0b9de6100.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "法国卡地亚",
     "title2": "蓝气球系列机械男表",
     "fenqi_price": "¥3641.7",
     "price": "¥43700"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201710_18_1111_03_1305_I05_08310.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士豪度",
     "title2": "INFINITY极臻系列机械男表",
     "fenqi_price": "¥934.2",
     "price": "¥11210"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/b31beadd79b243e3866671722203bc5d.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "德国万宝龙",
     "title2": "传承精密计时系列自动机械男表",
     "fenqi_price": "¥20363.3",
     "price": "¥244360"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/0462e14a6dc8492fbd6084bf7637f4c9.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士万国",
     "title2": "葡萄牙系列自动机械男表",
     "fenqi_price": "¥6883.3",
     "price": "¥82600"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201610_19_R32980902_56211.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士雷达",
     "title2": "HYPERCHROME皓星系列机械男表",
     "fenqi_price": "¥1640",
     "price": "¥19680"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201610_20_R32980112_09845.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士雷达",
     "title2": "HYPERCHROME皓星系列机械男表",
     "fenqi_price": "¥1161.7",
     "price": "¥13940"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士天梭",
     "title2": "力洛克系列自动机械男表",
     "fenqi_price": "¥306.7",
     "price": "¥3680"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/e19030cf34504f78bd0818e9feabac10.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士世纪",
     "title2": "AFFINITY系列石英女表",
     "fenqi_price": "¥2566.7",
     "price": "¥30800"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/f29bae2deb9143cab946f7327d677e59.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "法国赫柏林",
     "title2": "Perles 珍珠系列石英女表",
     "fenqi_price": "¥316.7",
     "price": "¥3800"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/387bdecc2ed44b968273330924c9ac66.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "法国赫柏林",
     "title2": "Perles 珍珠系列石英女表",
     "fenqi_price": "¥383.3",
     "price": "¥4600"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/3dadc3cefd244fe689fbafd54afc2b37.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士万国",
     "title2": "飞行员系列机械男表",
     "fenqi_price": "¥3010",
     "price": "¥36120"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/37b113a4f61d48bbaf5652c1b504c0b4.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士积家",
     "title2": "北宸系列自动机械男表",
     "fenqi_price": "¥7933.3",
     "price": "¥95200"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201305_08_123_20_35_20_52_002_51612.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士欧米茄",
     "title2": "星座系列自动机械男表",
     "fenqi_price": "¥4031.7",
     "price": "¥48380"
 }, {
     "imgSrc": "//image6.wbiao.co/shop/201611_07_41957-11-131-BB6A_20316.jpg?x-oss-process=image/resize,m_pad,h_223",
     "title": "瑞士芝柏",
     "title2": "特别系列机械男表",
     "fenqi_price": "¥5200.2",
     "price": "¥62402"
 }]