<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="trading2018.login" debug="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<%--<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>--%>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Login to NCHU STOCK MONOPOLY</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<%--<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="帳號"/>
            <asp:TextBox id="account" runat="server" />
            <asp:Label runat="server" Text="密碼"/>
            <asp:TextBox id="password" runat="server" />
            <asp:Button  runat="server" Text="login" OnClick="Unnamed_Click"/>
        </div>
    </form>
</body>--%>
    <body>
   <form id="form1" runat="server">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title">
						NCHU STOCK MONOPOLY Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid account is required">
						<%--<input class="input100" type="text" name="email" placeholder="Email">--%>
                        <asp:TextBox id="Account" runat="server" class="input100" type="text" name="Account" placeholder="Account" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<%--<input class="input100" type="password" name="pass" placeholder="Password">--%>
                        <asp:TextBox id="Password" runat="server" class="input100" type="password" name="pass" placeholder="Password" />
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<%--<button class="login100-form-btn">
							Login
						</button>--%>
                        <asp:Button runat="server" Text="Login" CssClass="login100-form-btn" OnClick="Login_Click"/>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="mailto:cv727320@gmail.com">
							Username / Password?
						</a>
					</div>
                    <div class="text-center p-t-136">
						<span class="txt1">
							Copyright @2018 國立中興大學科管所 曾敏涵
						</span>
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="mailto:cv727320@gmail.com">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</form>
</body>
</html>

