<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recheck_transaction.aspx.cs" Inherits="trading2018.recheck_transaction" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>NCHU STOCK MONOPOLY</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- Fonts-->
    <link rel="stylesheet" type="text/css" href="assets/fonts/fontawesome/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/fonts/pe-icon/pe-icon.css">
    <!-- Vendors-->
    <link rel="stylesheet" type="text/css" href="assets/vendors/bootstrap/grid.css">
    <link rel="stylesheet" type="text/css" href="assets/vendors/magnific-popup/magnific-popup.min.css">
    <link rel="stylesheet" type="text/css" href="assets/vendors/swiper/swiper.css">
    <!-- App & fonts-->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700">
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<![endif]-->
    <style>

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrap">

            <!-- header -->
            <header class="header header--small">
                <div class="container">
                    <div class="header__inner">
                        <div class="header__logo"><a href="home.aspx">
                            <img src="assets/img/logo.png" alt="" /></a></div>
                        <div class="header__menu">

                            <!-- onepage-nav -->
                            <nav class="onepage-nav">

                                <!-- onepage-menu -->
                                <ul class="onepage-menu" style="font-family: Microsoft JhengHei;">
                                    <li class="current-menu-item"><a href="#recheck">RECHECK</a>
                                    </li>
                                    <li><a>SEARCH</a>
                                        <ul class="sub-menu" style="font-family: Microsoft JhengHei;">
                                            <li><a href="SingleSearch.aspx">Single</a></li>
                                            <li><a href="http://mis.twse.com.tw/stock/index.jsp" target="_blank" style="font-family: 'Microsoft JhengHei'">基本市況報導網站</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="transaction.aspx">TRANSACTION</a>
                                    </li>
                                    <li><a style="color: CadetBlue">Hello,
                                       
                                        <asp:Label runat="server" ID="lStuName" style="font-family:'Microsoft JhengHei'" Text="StuName" ForeColor="CadetBlue" Font-Bold="true"></asp:Label></a>
                                    </li>
                                    <li><a href="#id-6">ACCOUNT</a>
                                        <ul class="sub-menu" style="font-family: Microsoft JhengHei;">
                                            <li><a href="member_info.aspx">My Account</a></li>
                                            <li><a href="track.aspx">Track</a></li>
                                            <li><a href="record.aspx">Record</a></li>
                                            <li><a>
                                                <asp:Button runat="server" Text="Logout" OnClick="Logout_Click" BackColor="Black" BorderStyle="Solid" /></a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <!-- onepage-menu -->

                                <div class="navbar-toggle"><span></span><span></span><span></span></div>
                            </nav>
                            <!-- End / onepage-nav -->

                        </div>
                    </div>
                </div>
            </header>
            <!-- End / header -->

            <!-- Content-->
            <div class="md-content">

                <section class="md-section" id="blank" style="padding-top: 5%; padding-bottom: 0">
                </section>
                <!-- Section -->
                <section class="md-section" id="recheck">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">ATTENTION</h2>
                                </div>
                                <!-- End / title -->

                                <div class="mb-40">

                                    <!-- contact -->
									<div class="contact" style="font-family:'Microsoft JhengHei'">
										<h3 class="contact__title" style="font-family:'Microsoft JhengHei';font-weight:900">提醒您</h3>
										<div>每筆成功的交易，將扣取交易金額 <label style="color:cornflowerblue; font-weight:900">
                                            0.1425% </label>的<label style="font-weight:900">手續費</label>及 <label style="color:cornflowerblue; font-weight:900">
                                           0.3% </label>的<label style="font-weight:900">證交稅</label>。</div>
									</div><!-- End / contact -->


                                   <!-- contact -->
									<div class="contact" style="font-family:'Microsoft JhengHei'">
										<h3 class="contact__title" style="font-family:'Microsoft JhengHei';font-weight:900">交易規範</h3>
										<div>當日股價漲停的股票不能買 (漲了10%),當日股價跌停的股票不能賣 (跌了10%)
										</div>
									</div><!-- End / contact -->


                                   <!-- contact -->
									<div class="contact" style="font-family:'Microsoft JhengHei'">
										<h3 class="contact__title" style="font-family:'Microsoft JhengHei';font-weight:900">交易順序</h3>
										<div><label style="color:cornflowerblue; font-weight:900">賣出</label>優先於買入, 下單時間早優先於晚</div>
									</div><!-- End / contact -->

                                </div>
                            </div>
                            <div class="col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">Place an Order</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            股票代碼 &nbsp
										<asp:Label ID="lStockCode" runat="server" ForeColor="PaleVioletRed" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            股票名稱 &nbsp
										<asp:Label ID="lStockName" runat="server" ForeColor="PaleVioletRed" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->


                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            價位 &nbsp
									
                                            <asp:Label ID="lStockPrice" runat="server" ForeColor="PaleVioletRed" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->


                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            張數 &nbsp
									
                                            <asp:Label ID="lStockBoardLot" runat="server" ForeColor="PaleVioletRed" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            買賣 &nbsp
									
                                            <asp:Label ID="lAction" runat="server" ForeColor="PaleVioletRed" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            交易前餘額 &nbsp
									
                                            <asp:Label ID="lBalance" runat="server" ForeColor="#669999" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            收盤價 &nbsp
									
                                            <asp:Label ID="lCloseP" runat="server" ForeColor="#669999" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            收盤價參考時間 &nbsp
									
                                            <asp:Label ID="lClosePT" runat="server" ForeColor="#669999" Font-Bold="true"></asp:Label></label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item">
                                        <asp:Button runat="server" ID="btn_Confirm" class="md-btn btn-custom" Style="font-family: 'Microsoft JhengHei'" Text="確定送出" OnClick="Confirm_Click"></asp:Button>
                                        &nbsp
                                       
                                        <asp:Button runat="server" ID="btn_Cancel" class="md-btn btn-custom" Style="font-family: 'Microsoft JhengHei'" Text="取消交易" OnClick="Cancel_Click"></asp:Button>
                                        <asp:Label ID="lTransationFail" runat="server" ForeColor="Red"></asp:Label>
                                    </div>
                                    <!-- End / form-item -->

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:SQLDB%>"
                                        InsertCommand="INSERT INTO Record(帳號,訂單編號,價格,股票號碼,數量,買賣,時間) VALUES (@帳號,@訂單編號,@價格,@股票號碼,@數量,@買賣,@時間)"
                                        SelectCommand="INSERT INTO UnsuccessfulRecord(帳號,價格,股票號碼,數量,買賣,下單時間) VALUES (@帳號,@價格,@股票號碼,@數量,@買賣,@下單時間)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="帳號" SessionField="ID" />
                                            <asp:SessionParameter Name="價格" SessionField="price" />
                                            <asp:SessionParameter Name="股票號碼" SessionField="stock" />
                                            <asp:SessionParameter Name="數量" SessionField="amount" />
                                            <asp:SessionParameter Name="買賣" SessionField="BuyorSell" />
                                            <asp:SessionParameter Name="下單時間" SessionField="time" />
                                        </SelectParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="帳號" />
                                            <asp:Parameter Name="訂單編號" />
                                            <asp:Parameter Name="價格" />
                                            <asp:Parameter Name="股票號碼" />
                                            <asp:Parameter Name="數量" />
                                            <asp:Parameter Name="買賣" />
                                            <asp:Parameter Name="時間" />
                                        </InsertParameters>
                                    </asp:SqlDataSource>

                                </div>
                                <!-- End / form-wrapper -->
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End / Section -->

            </div>
            <!-- End / Content-->

            <!-- footer -->
            <div class="footer">
                <div id="back-to-top"><i class="pe-7s-angle-up"></i></div>
                <div class="container">
                    <div class="footer__wrapper">
                        <div class="footer__social">

                             <!-- social-icon -->
                            <a class="social-icon" href="mailto:cv727320@gmail.com"><i class="social-icon__icon fa fa-envelope"></i>
                            </a>
                            <!-- End / social-icon -->


                            <!-- social-icon -->
                            <a class="social-icon" href="http://web.nchu.edu.tw/~eschang/eschang.htm"><i class="social-icon__icon fa fa-graduation-cap"></i>
                            </a>
                            <!-- End / social-icon -->


                            <!-- social-icon -->
                            <a class="social-icon" href="http://web.nchu.edu.tw/~eschang/courseDir/SISP.htm"><i class="social-icon__icon fa fa-folder-open"></i>
                            </a>
                            <!-- End / social-icon -->

                        </div>
                        <p class="footer__copy" style="font-family:'Microsoft JhengHei'">
                            授課教授 Prof. Chang
                        <p class="footer__copy" style="font-family: 'Microsoft JhengHei'">2018 &copy; 國立中興大學科技管理研究所 曾敏涵 All rights Reserved.</p>
                    </div>
                </div>
            </div>
            <!-- End / footer -->

        </div>
        <!-- Vendors-->
        <script type="text/javascript" src="assets/vendors/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="assets/vendors/imagesloaded/imagesloaded.pkgd.js"></script>
        <script type="text/javascript" src="assets/vendors/isotope-layout/isotope.pkgd.js"></script>
        <script type="text/javascript" src="assets/vendors/jquery-one-page/jquery.nav.min.js"></script>
        <script type="text/javascript" src="assets/vendors/jquery.easing/jquery.easing.min.js"></script>
        <script type="text/javascript" src="assets/vendors/jquery.matchHeight/jquery.matchHeight.min.js"></script>
        <script type="text/javascript" src="assets/vendors/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="assets/vendors/masonry-layout/masonry.pkgd.js"></script>
        <script type="text/javascript" src="assets/vendors/swiper/swiper.jquery.js"></script>
        <script type="text/javascript" src="assets/vendors/menu/menu.js"></script>
        <script type="text/javascript" src="assets/vendors/typed/typed.min.js"></script>
        <!-- App-->
        <script type="text/javascript" src="assets/js/main.js"></script>
    </form>
</body>
</html>

