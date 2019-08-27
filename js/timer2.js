function timer2(time, index) {
    let arr = time.split(":");
    var offsetItem = arr[0] * 60 * 60 * 1000 + arr[1] * 60 * 1000 + arr[2] * 1000;
    var offset2 = Math.random() * 100000000000000 + offsetItem;


    var timer = setInterval(function () {
        var currentDate = new Date();
        var offset = Math.round((offset2 - currentDate.getTime()) / 1000);

        if (offset <= 0) {
            /* 切换图片 */
            // oProduct.src = "./img/2.png";
            // oActive.src = "./img/3.jpg";
            // oCountDown.innerText = "";

            /* 关闭倒计时 */
            clearInterval(timer);
        }

        var h = Math.floor(offset / 60 / 60 % 24);
        var m = Math.floor(offset / 60 % 60);
        var s = Math.floor(offset % 60);


        h = addZero(h);

        m = addZero(m);

        s = addZero(s);
        $(".spanH").eq(index).html(h);
        $(".spanM").eq(index).html(m);
        $(".spanS").eq(index).html(s);


    }, 1000);


}

function addZero(a) {
    if (a < 10) {
        a = ("0" + a);
    }
    return a;
}