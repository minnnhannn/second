<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="track.aspx.cs" Inherits="trading2018.track" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>NCHU STOCK MONOPOLY</title>
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
                        <div class="header__logo">
                            <a href="home.aspx">
                                <img src="assets/img/logo.png" alt="" /></a>
                        </div>
                        <div class="header__menu">

                            <!-- onepage-nav -->
                            <nav class="onepage-nav">

                                <!-- onepage-menu -->
                                <ul class="onepage-menu" style="font-family: Microsoft JhengHei;">
                                    <li class="current-menu-item"><a href="#track">TRACK</a>
                                    </li>

                                    <li><a>SEARCH</a>
                                        <ul class="sub-menu" style="font-family: Microsoft JhengHei;">
                                            <li><a href="singlesearch.aspx">Single Search</a></li>
                                            <li><a href="http://mis.twse.com.tw/stock/index.jsp" target="_blank" style="font-family: 'Microsoft JhengHei'">基本市況報導網站</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="transaction.aspx">TRANSACTION</a>
                                    </li>
                                    <li><a style="color: CadetBlue">Hello,
                                       
                                        <asp:Label runat="server" ID="lStuName" style="font-family:'Microsoft JhengHei'" Text="StuName" ForeColor="CadetBlue" Font-Bold="true"></asp:Label></a>
                                    </li>
                                    <li><a>ACCOUNT</a>
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
                <section class="md-section" id="track">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 ">
                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">Stock Tracking</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">

                                    <!-- form-item -->
                                    <div class="form-item">
                                        <label class="form__label" style="font-family: Microsoft JhengHei;">
                                            欲加入追蹤的股票代號<span>*</span></br>
                                            <asp:TextBox ID="StockCode" runat="server" class="form-control" type="text" name="input" placeholder="" Width="130px" />
                                            &nbsp&nbsp&nbsp<asp:Button runat="server" ID="btn_Code" class="md-btn btn-custom" Text="確定" OnClick="Confirm_Click" Style="font-family: Microsoft JhengHei;"></asp:Button>
                                            &nbsp&nbsp&nbsp<asp:Label ID="StockCodeWarn" runat="server" ForeColor="Red"></asp:Label>
                                        </label>
                                    </div>
                                    <!-- End / form-item -->


                                    <!-- form-item -->
                                    <div class="form-item">
                                        <label class="form__label" style="font-family: Microsoft JhengHei;">
                                            請輸入股票名稱<span>*</span>&nbsp (可輸入部分名稱) </br>
                                            <asp:TextBox ID="StockName" runat="server" class="form-control" type="text" name="input" placeholder="" Width="130px"/>
											&nbsp&nbsp&nbsp<asp:Button runat="server" ID="btn_Name" class="md-btn btn-custom" Text="確定" OnClick="Confirm_Click" Style="font-family: Microsoft JhengHei;"></asp:Button>
                                            &nbsp&nbsp&nbsp<asp:Label ID="StockNameWarn" runat="server" ForeColor="Red"></asp:Label>
                                        </label>
                                    </div>
                                    <!-- End / form-item -->
                                </div>

                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SQLDB %>" 
                        SelectCommand="INSERT INTO [Follow] (帳號, 股票號碼) VALUES (@帳號,@股票號碼)" 
                        InsertCommand="INSERT INTO [Follow] (帳號, 股票號碼) VALUES (@帳號,@股票號碼)">
                        <SelectParameters>
                            <asp:SessionParameter Name="帳號" SessionField="ID" />
                            <asp:ControlParameter ControlID="StockCode" Name="股票號碼" PropertyName="Text" />
                        </SelectParameters>
                        <InsertParameters>
                            <asp:Parameter Name="帳號" />
                            <asp:Parameter Name="股票號碼" />
                        </InsertParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SQLDB %>" 
                        DeleteCommand="DELETE FROM Follow WHERE([帳號] = @帳號) AND ([股票號碼=@股票號碼]) " 
                        SelectCommand="DELETE FROM Follow WHERE([帳號] = @帳號) AND ([股票號碼]=@股票號碼) ">
                        <SelectParameters>
                            <asp:SessionParameter Name="帳號" SessionField="ID" />
                            <asp:ControlParameter ControlID="StockName" Name="股票號碼" PropertyName="Text" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />                      
                        </DeleteParameters>
                    </asp:SqlDataSource>

                            </div>
                            <div class="col-lg-8 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">
                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family: Microsoft JhengHei;">目前所有追蹤股票的資訊</h2>
                                </div>
                                <!-- End / title -->

                                <div class="mb-40">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="gvStyle" DataSourceID="SqlDataSource1"
                                        AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="代號,時間"
                                        AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999"
                                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                        ForeColor="Black" Width="500px" Style="font-family: 微軟正黑體;"
                                        Font-Size="Medium">
                                        <Columns>
                                            <asp:BoundField DataField="代號" HeaderText="代號" ReadOnly="True"
                                                SortExpression="代號" />
                                            <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                                            <asp:BoundField DataField="開盤" HeaderText="開盤" SortExpression="開盤" />
                                            <asp:BoundField DataField="收盤" HeaderText="收盤" SortExpression="收盤" />
                                            <asp:BoundField DataField="最高" HeaderText="最高" SortExpression="最高" />
                                            <asp:BoundField DataField="最低" HeaderText="最低" SortExpression="最低" />
                                            <asp:BoundField DataField="昨收" HeaderText="昨收" SortExpression="昨收" />
                                            <asp:BoundField DataField="成交量" HeaderText="成交量"
                                                SortExpression="成交量" />
                                            <asp:BoundField DataField="時間" HeaderText="時間" ReadOnly="True"
                                                SortExpression="時間" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                        <RowStyle BackColor="White" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                        SelectCommand="SELECT Stock.代號, Stock.名稱, Stock.開盤, Stock.收盤, Stock.最高, Stock.最低, Stock.昨收, Stock.成交量,Stock.時間 FROM [Stock], [Follow] WHERE (Stock.代號 = Follow.股票號碼) AND (Follow.帳號 = @帳號) AND (Stock.時間 = @時間)">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />
                                            <asp:SessionParameter Name="時間" SessionField="Date" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>

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
                        <p class="footer__copy" style="font-family:'Microsoft JhengHei'">2018 &copy; Copyright 國立中興大學科技管理研究所 曾敏涵 All rights Reserved.</p>
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
