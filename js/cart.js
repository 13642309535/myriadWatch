$(function () {
	let phone3 = Cookie.getItem("phone");
	let phone4 = window.sessionStorage.getItem("phone");
	let user = phone3 == undefined ? phone4 : phone3;

	console.log(user);

	function creatCarBox(arr) {
		allHtmlItem = "";

		$(arr).each(function name(index, item) {
			htmlItem = ` 
  <ul class="order_lists" data_storeNumber=${item.storeNumber} 	data_goodid=${item.data_goodid}>
  <li class="list_chk">
	  <input type="checkbox"  class="son_check">
  </li>
  <li class="list_con">
	  <div class="list_img"><a href="javascript:;"><img src="${item.imgSrc}" alt=""></a></div>
	  <div class="list_text"><a href="javascript:;">${item.goodsName}</a></div>
  </li>
  <li class="list_info">
	  <p>${item.version}</p>
  </li>
  <li class="list_price">
	  <p class="price">${item.price}</p>
  </li>
  <li class="list_amount">
	  <div class="amount_box">
		  <a href="javascript:;" class="reduce reSty">-</a>
		  <input type="text" value="${item.goodNum}" class="sum">
		  <a href="javascript:;" class="plus">+</a>
	  </div>
  </li>
  <li class="list_sum">
	  <p class="sum_price">${item.goodNum*item.price}</p>
  </li>
  <li class="list_op">
	  <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
  </li>
</ul>`;
			allHtmlItem += htmlItem;
		})

		let html =
			`  <div class="cartBox">

		<!--店铺名-->
	  <div class="shop_info">
		  <div class="all_check">
			  <input type="checkbox" id="shop_a" class="shopChoice">
		  </div>
		  <div class="shop_name">
			  店铺：<a href="javascript:;">${arr[0].shop}</a>
		  </div>
	  </div>
	  
	  <!-- 商品信息 -->
	  <div class="order_content">
		${allHtmlItem}
	  </div>
  </div>`;
		return html;
	}
	console.log(user);

	$.ajax({
		type: "POST",
		dataType: "json",
		url: "http://127.0.0.1/myriadWatch/api/carForm.php",
		data: {
			"user": user,
		},
		success: response => {
			console.log(response);
			if (response.length == 0) {
				$(".cartTop").hide();
				$(".bar-wrapper").hide();
				$(".allCartBox").html(`<img class="emptyImg" src="http://127.0.0.1/myriadWatch/images/emptyCar.png" alt="">
				<a class="gotobuy" href="http://127.0.0.1/myriadWatch/">马上购物</a>`);
			} else {
				// 店铺名去重
				let arr = [];
				$(response).each(function name(index, item) {

					arr.push(item.shop)
				})
				let arrSet = [...new Set(arr)];

				// 把店铺名相同的放在一起
				let arrT = [];
				$(arrSet).each(function name(index, item) {
					let item2 = item;
					let arr2 = [];
					$(response).each(function name(index1, item1) {

						if (item1.shop == item2) {
							arr2.push(item1);
						}
					})
					arrT.push(arr2)
				})

				// 新数组渲染
				let allHtmlBox = ""
				$(arrT).each(function name(index, item) {
					let htmlBox = creatCarBox(item);
					allHtmlBox += htmlBox;
				})

				$(".allCartBox").html(allHtmlBox);


				//
				//===============================================全局全选================================
				// 点击全选
				$(".whole_check").click(function () {
					let a = $(this).prop("checked");
					if (a) {
						$(".allCartBox input").prop("checked", true);
					} else {
						$(".allCartBox input").prop("checked", false);
					}
					totalMoney();

				});

				// 点击单项商品影响全选
				$(".allCartBox .order_lists .son_check").click(function name(params) {

					// 单项商品状态集合
					let arr = [];
					$(".allCartBox .order_lists .son_check").each(function name(params) {
						arr.push($(this).prop("checked"));
					})

					let arrSet = [...new Set(arr)];
					if ($.inArray(false, arrSet) == -1) {
						$(".whole_check").prop("checked", true);
					} else {
						$(".whole_check").prop("checked", false);
					}
					totalMoney();

				})

				// 点击店铺（局部全选）影响全选
				$(".allCartBox .shopChoice").click(function name(params) {

					// 店铺状态状态集合
					let arr = [];
					$(".allCartBox .shopChoice").each(function name(params) {
						arr.push($(this).prop("checked"));
					})

					let arrSet = [...new Set(arr)];
					if ($.inArray(false, arrSet) == -1) {
						$(".whole_check").prop("checked", true);
					} else {
						$(".whole_check").prop("checked", false);
					}
					totalMoney();

				})



				//===============================================局部全选（店铺名）================================

				// 点击店铺名
				$(".shopChoice").click(function name(params) {
					// 对店铺下面的商品状态影响
					let a = $(this).prop("checked");
					if (a) {
						$(this).parent().parent().parent().find(".son_check").prop("checked", true);
					} else {
						$(this).parent().parent().parent().find(".son_check").prop("checked", false);
					}
					totalMoney();


				})

				// 点击单项商品影响局部全选
				$(".allCartBox .order_lists .son_check").click(function name(params) {

					// 所在商铺所有单项商品状态集合
					let arr = [];
					$(this).parent().parent().parent().parent().find(".son_check").each(function name(params) {
						arr.push($(this).prop("checked"));
					})

					let arrSet = [...new Set(arr)];
					if ($.inArray(false, arrSet) == -1) {
						$(this).parent().parent().parent().parent().find(".shopChoice").prop("checked", true);
					} else {
						$(this).parent().parent().parent().parent().find(".shopChoice").prop("checked", false);
					}
					totalMoney();

				})
				// 
				//=================================================商品数量==============================================
				//全局的checkbox选中和未选中的样式
				var $allCheckbox = $('input[type="checkbox"]'), //全局的全部checkbox
					$wholeChexbox = $('.whole_check'),
					$cartBox = $('.cartBox'), //每个商铺盒子
					$shopCheckbox = $('.shopChoice'), //每个商铺的checkbox
					$sonCheckBox = $('.son_check'); //每个商铺下的商品的checkbox



				var $plus = $('.plus'),
					$reduce = $('.reduce'),
					$all_sum = $('.sum');

				// 点击加号
				$plus.click(function () {
					var $inputVal = $(this).prev('input'),
						$count = parseInt($inputVal.val()) + 1,
						$obj = $(this).parents('.amount_box').find('.reduce'),
						$priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
						$price = $(this).parents('.order_lists').find('.price').html(), //单价
						$data_storenumber = $(this).parents('.order_lists').attr("data_storenumber"),
						$priceTotal = $count * $price;

					if ($data_storenumber > $count - 1) {
						$inputVal.val($count)
					} else {
						alert(`库存${$data_storenumber}`)
					}

					$priceTotalObj.html($priceTotal);
					if ($inputVal.val() > 1 && $obj.hasClass('reSty')) {
						$obj.removeClass('reSty');
					}
					totalMoney();

					// 发送请求更新数据库表
					let data_goodid = $(this).parents('.order_lists').attr("data_goodid");
					let goodNum = $count;

					carChangeNumber(user, data_goodid, goodNum);
				});

				// 发送请求更新数据库表
				function carChangeNumber(user, data_goodid, goodNum) {
					$.ajax({
						type: "POST",
						dataType: "json",
						url: "http://127.0.0.1/myriadWatch/api/carChangeNumber.php",
						data: {
							"user": user,
							"data_goodid": data_goodid,
							"goodNum": goodNum,
						},
						success: response => {
							console.log(response);

						}

					})
				}

				// 点击减号
				$reduce.click(function () {
					var $inputVal = $(this).next('input'),
						$count = parseInt($inputVal.val()) - 1,
						$priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
						$price = $(this).parents('.order_lists').find('.price').html(), //单价
						$priceTotal = $count * $price;
					if ($inputVal.val() > 1) {
						$inputVal.val($count);
						$priceTotalObj.html($priceTotal);
					}
					if ($inputVal.val() == 1 && !$(this).hasClass('reSty')) {
						$(this).addClass('reSty');
					}
					totalMoney();

					// 发送请求更新数据库表
					let data_goodid = $(this).parents('.order_lists').attr("data_goodid");
					let goodNum = $count;

					carChangeNumber(user, data_goodid, goodNum);
				});


				// 数量输入框值（手动输入）
				$all_sum.keyup(function () {
					var $count = 0,
						$priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
						$price = $(this).parents('.order_lists').find('.price').html(), //单价
						$priceTotal = 0;
					if ($(this).val() == '') {
						$(this).val('1');
					}

					$(this).val($(this).val().replace(/\D|^0/g, ''));
					$count = $(this).val();
					$priceTotal = $count * parseInt($price);
					$(this).attr('value', $count);
					$priceTotalObj.html($priceTotal);
					totalMoney();
				})

				$all_sum.blur(function name(params) {
					var $data_storenumber = $(this).parents('.order_lists').attr("data_storenumber");
					if ($(this).val() * 1 > $data_storenumber * 1) {
						alert(`库存${$data_storenumber}`);
						$(this).val($data_storenumber);

						$priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
							$price = $(this).parents('.order_lists').find('.price').html(), //单价
							$priceTotal = $(this).val() * $price;
						$priceTotalObj.html($priceTotal);
					} else {

						// 发送请求更新数据库表
						let data_goodid = $(this).parents('.order_lists').attr("data_goodid");
						let goodNum = $(this).val();

						carChangeNumber(user, data_goodid, goodNum);
					}

				})



				//======================================移除商品========================================
				// 发送请求更新数据库表
				function carDeleteGoods(user, data_goodid) {
					$.ajax({
						type: "POST",
						dataType: "json",
						url: "http://127.0.0.1/myriadWatch/api/carDeleteGoods.php",
						data: {
							"user": user,
							"data_goodid": data_goodid,
						},
						success: response => {
							console.log(response);

						}

					})
				}
				// 
				var $order_lists = null;
				var $order_content = '';

				$('.delBtn').click(function () {
					$order_lists = $(this).parents('.order_lists');
					$order_content = $order_lists.parents('.order_content');
					$('.model_bg').fadeIn(300);
					$('.my_model').fadeIn(300);


					// 发送请求更新数据库表
					let data_goodid = $(this).parents('.order_lists').attr("data_goodid");
					carDeleteGoods(user, data_goodid);
					window.location.reload();


				});

				// 批量删除
				$(".bar-right .delete ").click(function name(params) {
					$(".son_check").each(function name(index, item) {
						let a = $(item).prop("checked");
						if (a) {
							let data_goodid = $(item).parents('.order_lists').attr("data_goodid");
							carDeleteGoods(user, data_goodid);
						}
						window.location.reload();

					})

				})


				//关闭模态框
				$('.closeModel').click(function () {
					closeM();
				});
				$('.dialog-close').click(function () {
					closeM();
				});

				function closeM() {
					$('.model_bg').fadeOut(300);
					$('.my_model').fadeOut(300);
				}
				//确定按钮，移除商品
				$('.dialog-sure').click(function () {
					$order_lists.remove();
					if ($order_content.html().trim() == null || $order_content.html().trim().length == 0) {
						$order_content.parents('.cartBox').remove();
					}
					closeM();
					$sonCheckBox = $('.son_check');
					totalMoney();
				})

				//======================================总计==========================================

				function totalMoney() {
					var total_money = 0;
					var total_count = 0;
					var calBtn = $('.calBtn a');
					$sonCheckBox.each(function () {
						if ($(this).is(':checked')) {
							var goods = parseInt($(this).parents('.order_lists').find('.sum_price').html());
							var num = parseInt($(this).parents('.order_lists').find('.sum').val());
							total_money += goods;
							total_count += num;
						}
					});
					$('.total_text').html('￥' + total_money);
					$('.piece_num').html(total_count);

					// console.log(total_money,total_count);

					if (total_money != 0 && total_count != 0) {
						if (!calBtn.hasClass('btn_sty')) {
							calBtn.addClass('btn_sty');
						}
					} else {
						if (calBtn.hasClass('btn_sty')) {
							calBtn.removeClass('btn_sty');
						}
					}
				}

			}

			// -----------------













		}
	})

});