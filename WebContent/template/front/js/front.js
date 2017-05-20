science = {
	base: "science",
	currencySign: "￥",
	currencyUnit: "元",
	priceScale: "2",
	priceRoundType: "roundHalfUp"
};

$().ready( function() {
	
	$('.prolist').on({
		  'mouseenter': function() {
		   $(this).addClass('on').siblings('li').removeClass('on');
		  },
		  'mouseleave': function() {
		   $(this).removeClass('on');
		  }
		 }, 'li');
	
	$(".navid").each(function(){
		$.ajax({
			url: "index!showNav.action?navId="+$(this).val(),
			type: "POST",
			dataType: "json",
			success: function(data) {
				$.each(data,function(i){
					console.log(data[i]["name"]+"xxx"+data[i]["value"]);
					$("#"+data[i]["parentid"]).append("<li><a href="+data[i]["value"]+"&childId="+data[i]["id"]+">"+data[i]["name"]+"</a></li>");
				})
			}
		});
	}); 
	
	
	//删除企业研发
	var $enterDevelop = $(".enterDevelop");
	$enterDevelop.click( function() {
		var $this = $(this);
		var enterDevelopId = $this.attr("enterDevelopId");
		$.dialog({type: "warn", content: "您确定要删除吗?", ok: "确 定", cancel: "取 消", modal: true, okCallback: deleteEnterDevelop});
		function deleteEnterDevelop() {
			$.ajax({
				url: "enter_develop!ajaxDelete.action",
				data: {id: enterDevelopId},
				type: "POST",
				dataType: "json",
				cache: false,
				success: function(data) {
					$.message({type: data.status, content: data.message});
					$this.parent().parent().remove();
				}
			});
		}
		return false;
	});
	
	//删除产品
	var $product = $(".product");
	$product.click( function() {
		var $this = $(this);
		var productId = $this.attr("productId");
		$.dialog({type: "warn", content: "您确定要删除吗?", ok: "确 定", cancel: "取 消", modal: true, okCallback: deleteProduct});
		function deleteProduct() {
			$.ajax({
				url: "product!ajaxDelete.action",
				data: {id: productId},
				type: "POST",
				dataType: "json",
				cache: false,
				success: function(data) {
					$.message({type: data.status, content: data.message});
					$this.parent().parent().remove();
				}
			});
		}
		return false;
	});
	
	/* ---------- MemberVerify ---------- */
	
	$.memberVerify = function () {
		if(getCookie("memberUsername") != null) {
			var isMemberLogin = false;
			$.ajax({
				url: "member!ajaxMemberVerify.action",
				type: "POST",
				dataType: "json",
				async: false,
				cache: false,
				success: function(data) {
					if (data.status) {
						isMemberLogin = true;
					}
				}
			});
			return isMemberLogin;
		} else {
			return false;
		}
	}

/* ---------- SliderScrollable ---------- */
	
	var $sliderScrollable = $("#sliderScrollable");
	if ($sliderScrollable.size() > 0) {
		$sliderScrollable.scrollable({
			circular: true,
			speed: 500
		}).autoscroll({
			autoplay: true,
			interval: 4000
		}).navigator();
	}
		
	/* ---------- Header ---------- */
		var $headerShowLoginWindow = $("#headerShowLoginWindow");
		var $headerShowRegisterWindow = $("#headerShowRegisterWindow");
		var $headerLoginMemberUsername = $("#headerLoginMemberUsername");
		var $headerMemberCenter = $("#headerMemberCenter");
		var $headerLogout = $("#headerLogout");
		
		
		$headerShowLoginWindow.click( function() {
				$.showLoginWindow();
				return false;
			})
			
		$.flushHeaderInfo = function () {
			if(getCookie("memberUsername") != null) {
				$headerLoginMemberUsername.text(getCookie("memberUsername"));
				$headerMemberCenter.show();
				$headerLogout.show();
				$headerShowLoginWindow.hide();
				$headerShowRegisterWindow.hide();
			} else {
				$headerLoginMemberUsername.text("");
				$headerShowLoginWindow.show();
				$headerShowRegisterWindow.show();
				$headerMemberCenter.hide();
				$headerLogout.hide();
			}
		}
		
		$.flushHeaderInfo();
			
//		$.showLoginWindow = function (redirectUrl) {
//			var loginWindowHtml = '<form id="loginWindowForm"> <table> <tr> <th>账&nbsp;&nbsp;户: </th> <td> <input type="text" id="loginWindowMemberUsername" name="username" class="formText" /> </td> </tr> <tr> <th>密&nbsp;&nbsp;码: </th> <td> <input type="password" id="loginWindowMemberPassword" name="password" class="formText" /> </td> </tr> <tr> <th>&nbsp; </table> </form>';
//			$.dialog({title: "企业登录", content: loginWindowHtml, ok: "登 录", cancel: "取 消", id: "loginWindow", className: "loginWindow", width: 450, okCallback: login, modal: true});
//			var $loginWindowForm = $("#loginWindowForm");
//			var $loginWindowMemberUsername = $("#loginWindowMemberUsername");
//			var $loginWindowMemberPassword = $("#loginWindowMemberPassword");
//			var $loginWindowCaptcha = $("#loginWindowCaptcha");
//			var $loginWindowCaptchaImage = $("#loginWindowCaptchaImage");
			
			function login() {
//				if ($.trim($loginWindowMemberUsername.val()) == "") {
//					$loginWindowMemberUsername.focus();
//					$.message({type: "warn", content: "请输入用户名!"});
//					return false;
//				}
//				if ($.trim($loginWindowMemberPassword.val()) == "") {
//					$loginWindowMemberPassword.focus();
//					$.message({type: "warn", content: "请输入密码!"});
//					return false;
//				}
//				$.ajax({
//					url:  "/userlogin.do",
//					data: $loginWindowForm.serialize(),
//					type: "POST",
//					dataType: "json",
//					cache: false,
//					beforeSend: function() {
//						$loginWindowForm.find("button").attr("disabled", true);
//					},
//					success: function(data) {
//						if(data.resultCode == 0){   //登录成功
//							window.location.href="/index.do";
//						}
////						if (data.status == "success") {
////							$.flushHeaderInfo();
////							$.closeDialog("loginWindow");
////						}
//						$.message({type: data.status, content: data.message});
//						if(redirectUrl != null) {
//							location.href = redirectUrl;
//						}
//					},
//					complete: function() {
//						$loginWindowForm.find("button").attr("disabled", false);
//						$loginWindowCaptcha.val("");
//					}
//				});
//				return false;
//			}
				var btn = $("#loginBtn");
			    btn.button('loading');
				var datasent = $("#loginForm").serializeObject();
				params = JSON.stringify(datasent); 
				$.ajax({
					type : "POST",
					url : "../userlogin.do",
					dataType : "json",
					contentType : "application/json;charset=utf-8",
					data : params,
					async : false,
					success : function(data) {
						if(data.resultCode == 0){   //登录成功
							window.location.href="../front/hello.jsp";
						}else{
							//randomImg();   //加载页面时生成验证码
							alert(data.resultMessage);
						}
						btn.button('reset');
					}
				});
		}
		
		$.showRegisterWindow = function () {
			var registerWindowHtml = ' <form id="registerWindowForm"> <table> <tr> <th>用户名: </th> <td> <input type="text" id="registerWindowMemberUsername" name="username" class="formText" title="用户名只允许包含中文、英文、数字和下划线!" /> </td> </tr> <tr> <th>密&nbsp;&nbsp;&nbsp;码: </th> <td> <input type="password" id="registerWindowMemberPassword" name="password" class="formText" /> </td> </tr> <tr> <th>重复密码: </th> <td> <input type="password" id="registerWindowReMemberPassword" name="rePassword" class="formText" title="密码长度只允许在4-20之间!" /> </td> </tr> <tr> <th>E-mail: </th> <td> <input type="text" id="registerWindowMemberEmail" name="email" class="formText" /> </td> </tr> <tr> <th>联系方式: </th> <td><input type="text" id="registerWindowMemberContactWay" name="tel" class="formText" /> </td> </tr><tr> <th>企业名称: </th> <td><input type="text" name="enterprise" class="formText" /> </td> </tr></table> </form>';			
			$.dialog({title: "企业注册", content: registerWindowHtml, ok: "注 册", cancel: "取 消", id: "registerWindow", className: "registerWindow", width: 480, okCallback: register, modal: true});
		
			var $registerWindowForm = $("#registerWindowForm");
			var $registerWindowMemberUsername = $("#registerWindowMemberUsername");
			var $registerWindowMemberPassword = $("#registerWindowMemberPassword");
			var $registerWindowReMemberPassword = $("#registerWindowReMemberPassword");
			var $registerWindowMemberEmail = $("#registerWindowMemberEmail");
			var $registerWindowCaptcha = $("#registerWindowCaptcha");
			var $registerWindowCaptchaImage = $("#registerWindowCaptchaImage");
			var $registerWindowIsAgreeAgreement = $("#registerWindowIsAgreeAgreement");
			var $registerWindowShowAgreementWindow = $("#registerWindowShowAgreementWindow");
			
			function register() {
				if ($.trim($registerWindowMemberUsername.val()) == "") {
					$registerWindowMemberUsername.focus();
					$.message({type: "warn", content: "请输入用户名!"});
					return false;
				}
				if (!/^[\u0391-\uFFE5\w]+$/.test($registerWindowMemberUsername.val())) {
					$registerWindowMemberUsername.focus();
					$.message({type: "warn", content: "用户名只允许包含中文、英文、数字和下划线!"});
					return false;
				}
				if ($.trim($registerWindowMemberUsername.val()).length < 2 || $.trim($registerWindowMemberUsername.val()).length > 20) {
					$registerWindowMemberUsername.focus();
					$.message({type: "warn", content: "用户名长度只允许在2-20之间!"});
					return false;
				}
				if ($.trim($registerWindowMemberPassword.val()) == "") {
					$registerWindowMemberPassword.focus();
					$.message({type: "warn", content: "请输入密码!"});
					return false;
				}
				if ($.trim($registerWindowMemberPassword.val()).length < 4 || $.trim($registerWindowMemberPassword.val()).length > 20) {
					$registerWindowMemberPassword.focus();
					$.message({type: "warn", content: "密码长度只允许在4-20之间!"});
					return false;
				}
				if ($.trim($registerWindowReMemberPassword.val()) == "") {
					$registerWindowReMemberPassword.focus();
					$.message({type: "warn", content: "请输入重复密码!"});
					return false;
				}
				if ($.trim($registerWindowReMemberPassword.val()) != $.trim($registerWindowMemberPassword.val())) {
					$registerWindowReMemberPassword.focus();
					$.message({type: "warn", content: "两次密码输入不相同!"});
					return false;
				}
				if ($.trim($registerWindowMemberEmail.val()) == "") {
					$registerWindowMemberEmail.focus();
					$.message({type: "warn", content: "请输入E-mail!"});
					return false;
				}
				if (!/^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/.test($registerWindowMemberEmail.val())) {
					$registerWindowMemberEmail.focus();
					$.message({type: "warn", content: "E-mail格式错误!"});
					return false;
				}
				$.ajax({
					url: "member!checkUsername.action",
					data: {"member.username": $registerWindowMemberUsername.val()},
					type: "POST",
					cache: false,
					beforeSend: function() {
						$registerWindowForm.find("button").attr("disabled", true);
					},
					success: function(data) {
						if (data == "true") {
							$.ajax({
								url:  "member!ajaxRegister.action",
								data: $registerWindowForm.serialize(),
								type: "POST",
								dataType: "json",
								cache: false,
								success: function(data) {
									if (data.status == "success") {
										$.closeDialog("registerWindow");
										$.flushHeaderInfo();
									}
									$.message({type: data.status, content: data.message});
								},
								complete: function() {
									$registerWindowForm.find("button").attr("disabled", false);
									$registerWindowCaptcha.val("");
									registerWindowCaptchaImageRefresh();
								}
							});
						} else {
							$registerWindowMemberUsername.focus();
							$.message({type: "warn", content: "用户名已存在,请重新输入!"});
						}
					}
				});
				return false;
			}
		}
		
		$headerShowRegisterWindow.click( function() {
			$.showRegisterWindow();
			return false;
		})

		
});