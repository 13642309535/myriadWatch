$(function () {


    /* 图形验证码 */
    let imgCodeText = "";
    /* 短信验证码 */
    var msgText = "";
    /* 密码 */
    let passwordAText = "";
    let passwordBText = "";
    /* 用户名 */
    let usernameText = "";
    /* 手机号码 */
    let phoneText = "";
    // 推荐人手机号码
    let recommendPhoneText = "";




    // 短信验证码
    let msgCodeText = "";


    let username = $("#usernameID");
    let phone = $("#phoneID");
    let recommendPhone = $("#recommendPhoneID");
    let passwordA = $("#passwordA");
    let passwordB = $("#passwordB");
    let imgCode = $('#imageCode');
    let sendMsgBtn = $(".code-sms");
    let msgCode = $("#msgCode");


    /* 验证码处理 */
    (new Captcha({
        fontSize: 30
    })).draw(document.querySelector('#captcha'), r => {
        // console.log(r, '验证码1');
        imgCodeText = r;
        /* 自动触发标签失去焦点的事件 */
        imgCode.trigger("blur");
    });

    /* 正则表达式 */
    let regUsername = /^[A-Za-z]{6,8}$/;
    let regPhone = /^1[3-9]\d{9}$/; /* 1开头 第二位3-9 后面全都是数字   11位 */
    let regPassword = /^[a-zA-Z0-9]{6,16}$/;




    // 易源科技  
    // 浏览接口 三网短信通知类（需要模板） 一接入点/ API point 3发送短信  下滑到四、请求示例/ Request example 点JS  从下往上选择，复制，粘贴，ajax放进事件里

    //appid和密钥位置（他们在一起的）  个人中心 左侧栏 我是接口使用者 我的应用 添加 名字随便 立即创建 新创建的行  在密钥所在列点查看 输入登录密码  得密钥
    // 模板 我是接口使用者 短信接口管理 标题签名  用户注册
    // ajax里的content：后面的内容改为模板字符串 ``
    // ajax里的success后的 alert(result.showapi_res_code)注释掉

    // 短信接口函数
    function formatterDateTime() {
        var date = new Date()
        var month = date.getMonth() + 1
        var datetime = date.getFullYear() +
            "" // "年"
            +
            (month >= 10 ? month : "0" + month) +
            "" // "月"
            +
            (date.getDate() < 10 ? "0" + date.getDate() : date
                .getDate()) +
            "" +
            (date.getHours() < 10 ? "0" + date.getHours() : date
                .getHours()) +
            "" +
            (date.getMinutes() < 10 ? "0" + date.getMinutes() : date
                .getMinutes()) +
            "" +
            (date.getSeconds() < 10 ? "0" + date.getSeconds() : date
                .getSeconds());
        return datetime;
    }

    sendMsgBtn.click(function () {
        msgCodeText = parseInt(Math.random() * 1000000);
        console.log(msgCodeText);

        /* 检查手机号码是否正确 */
        var text = $.trim(phone.val());
        if (text.length != 0 && regPhone.test(text)) {

            $(sendMsgBtn).addClass("disabled");

            /* 发送网络请求：发短信 */
            $.ajax({
                type: 'post',
                url: 'http://route.showapi.com/28-1',
                dataType: 'json',
                data: {
                    "showapi_timestamp": formatterDateTime(),
                    "showapi_appid": '', //这里需要改成自己的appid  我的是104152
                    "showapi_sign": '5617bd8e39724cb29968d8d5c8fdc3b0', //这里需要改成自己的应用的密钥secret
                    "mobile": phoneText,
                    "content": `{"code":${msgCodeText},"minute":3,"comName":"万表网"}`,
                    "tNum": "T150606060601",
                    "big_msg": ""
                },

                error: function (XmlHttpRequest, textStatus, errorThrown) {
                    alert("操作失败!");
                },
                success: function (result) {
                    console.log(result) //console变量在ie低版本下不能用
                    // alert(result.showapi_res_code)
                }
            });

            var count = 10;
            $(sendMsgBtn).attr("disabled", "disabled");
            var timer = setInterval(function () {
                count--;
                if (count <= 0) {
                    $(sendMsgBtn).val("发送短信验证码");
                    clearInterval(timer);
                    $(sendMsgBtn).attr("disabled", false);
                    $(sendMsgBtn).removeClass("disabled");


                } else {
                    $(sendMsgBtn).val("重试 " + count + "s");
                }
            }, 1000);
        } else {
            alert("手机号码不正确");
        }

        /* 开启倒计时：当前的标签不可点击 */

    });


    /* 监听用户名标签失去焦点的事件 */
    username.blur(function (e) {
        let text = $.trim($(this).val());
        usernameText = text;
        let parent = $(this).parents(".form-item");
        let msg = $(this).nextAll(".form-group__message");

        if (text.length == 0) {
            parent.addClass("form-group-error");
            msg.html("用户名不能为空");
        } else if (!regUsername.test(text)) {
            parent.addClass("form-group-error");
            msg.html("用户名不符合规范！");
        } else {
            parent.removeClass("form-group-error");
        }
    });

    // 短信验证码
    msgCode.blur(function (e) {
        let text = $.trim($(this).val());
        msgText = text;
        let parent = $(this).parents(".form-item");
        let msg = $(this).parent().nextAll(".form-group__message");

        if (text.length == 0) {
            parent.addClass("form-group-error");
            msg.html("短信验证码不能为空");
        } else if (text != msgCodeText) {
            parent.addClass("form-group-error");
            msg.html("短信验证码不正确");
        } else {
            parent.removeClass("form-group-error");
        }
    });

    // 图片验证码
    imgCode.blur(function (e) {
        let text = $.trim($(this).val());
        let parent = $(this).parents(".form-item");
        let msg = $(this).nextAll(".image-code-box").children(".form-group__message");

        if (text.length == 0) {
            parent.addClass("form-group-error");
            msg.html("验证码不能为空");
        } else if (imgCodeText.toLowerCase() != text.toLowerCase()) {
            parent.addClass("form-group-error");
            msg.html("验证码不正确！");
        } else {
            parent.removeClass("form-group-error");
        }
    });


    // 用户手机号码
    phone.blur(function (e) {

        let text = $.trim($(this).val());
        phoneText = text;
        let parent = $(this).parents(".form-item");
        let msg = $(this).nextAll(".form-group__message");

        if (text.length == 0) {
            parent.addClass("form-group-error");
            msg.html("请输入您的手机号");
        } else if (!regPhone.test(text)) {
            parent.addClass("form-group-error");
            msg.html("请输入正确的手机号码！");
        } else {
            parent.removeClass("form-group-error");
        }
        console.log(phoneText);
    });

    // 推荐人
    recommendPhone.blur(function (e) {
        let text = $.trim($(this).val());
        recommendPhoneText = text;
        let parent = $(this).parents(".form-item");
        let msg = $(this).nextAll(".form-group__message");

        if (text.length == 0) {
            parent.removeClass("form-group-error");
        } else if (!regPhone.test(text)) {
            parent.addClass("form-group-error");
            msg.html("请输入正确的手机号码！");
        } else {
            parent.removeClass("form-group-error");
            console.log(recommendPhoneText);



            $.ajax({
                type: "post",
                url: "http://127.0.0.1/myriadWatch/api/referrer.php",
                dataType: "json",
                data: `phone2=${recommendPhoneText}`,
                // dataType: "dataType",
                success: function (response) {



                    /* 先检查请求的结果，然后做出对应的处理 */
                    if (response == 0) {
                        parent.addClass("form-group-error");
                        msg.html("该手机号未注册会员");
                    }
                }
            });


        }

    });


    passwordA.blur(function (e) {
        let text = $.trim($(this).val());
        passwordAText = text;
        let parent = $(this).parents(".form-item");
        let msg = $(this).nextAll(".form-group__message");

        if (text.length == 0) {
            parent.addClass("form-group-error");
            msg.html("密码不能为空");
        } else if (!regPassword.test(text)) {
            parent.addClass("form-group-error");
            msg.html("密码应为6-20位任意字符组合");
        } else {
            parent.removeClass("form-group-error");
        }
    });

    passwordB.blur(function (e) {
        let text = $.trim($(this).val());
        passwordBText = text;
        let parent = $(this).parents(".form-item");
        let msg = $(this).nextAll(".form-group__message");

        if (text.length == 0) {
            parent.addClass("form-group-error");
            msg.html("密码不能为空");
        } else if (passwordAText != text) {
            parent.addClass("form-group-error");
            msg.html("两次密码不一致，请检查您的密码");
        } else {
            parent.removeClass("form-group-error");
        }
    });

    // 点击眼睛事件
    $("i").click(function () {
        if ($(this).is('.eyeOn')) {
            $(this).removeClass("eyeOn");
            $(this).siblings("input").attr("type", "password")


        } else {
            $(this).addClass("eyeOn");
            $(this).siblings("input").attr("type", "text")
        }


    })




    /* 点击注册按钮的事件 */
    // (1) 先获取标签绑定点击事件
    // (2) 检查是否满足条件，如果满足条件那么就发送网络请求，否则提示
    // [1] 表单要验证通过  && [2] 勾选同意注册协议
    $("#registerBtn").click(function () {

        if (
            phoneText.length != 0 &&
            msgText.length != 0 &&
            passwordAText.length != 0 &&
            passwordBText.length != 0 &&
            imgCodeText.length != 0 &&
            $(".form-group-error").length == 0 
        ) {
            passwordAText = hex_md5(passwordAText);
            console.log(passwordAText);
            console.log(phoneText);
            console.log(recommendPhoneText);



            $.ajax({
                type: "post",
                url: "http://127.0.0.1/myriadWatch/api/register.php",
                dataType: "json",
                data: `phone=${phoneText}&password=${passwordAText}&phone2=${recommendPhoneText}`,
                // dataType: "dataType",
                success: function (response) {
                    console.log(response);
                    /* 先检查请求的结果，然后做出对应的处理 */
                    if (response.status == "success") {
                        alert(response.msg);
                        /* 跳转到登录页面 */
                        window.location.href = "https://pu.wbiao.cn/member"
                    } else {
                        alert(response.msg);
                    }
                }
            });
        }

    })

});