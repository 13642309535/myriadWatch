$(function () {
    let phone3 = Cookie.getItem("phone");



    let registerlogin = $("#register");
    let passwordlogin = $("#password");

    $(".Buttons").click(function () {

        let phone = $(registerlogin).val();
        let password = $(passwordlogin).val();
        password = hex_md5(password)
        console.log(phone, password);

        $.ajax({
            type: "post",
            url: "http://127.0.0.1/myriadWatch/api/login.php",
            dataType: "json",
            data: `phone=${phone}&password=${password}`,
            success: function (respond) {
                console.log(respond);

                if (respond.status == "success") {

                    if ($(".register input").prop("checked")) {
                        let date = new Date();
                        date.setDate(date.getDate() + 10);
                        document.cookie = `phone=${phone};expires=${date};path=/myriadWatch`;
                    } else {
                        window.sessionStorage.setItem("phone", phone)
                    }

                    // alert(respond.msg);
                    window.history.back();
                } else {
                    alert(respond.msg);
                }
            }
        })
    })
})