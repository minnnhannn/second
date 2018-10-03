<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="member_info.aspx.cs" Inherits="trading2018.member_info" %>

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
                        <div class="header__logo">
                            <a href="home.aspx">
                                <img src="assets/img/logo.png" alt="" /></a>
                        </div>
                        <div class="header__menu">

                            <!-- onepage-nav -->
                            <nav class="onepage-nav">

                                <!-- onepage-menu -->
                                <ul class="onepage-menu" style="font-family: Microsoft JhengHei;">
                                    <li class="current-menu-item"><a href="#id-1">MY ACCOUNT</a>
                                    </li>
                                    <li><a href="#id-2">STOCK</a>
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
                                       
                                        <asp:Label runat="server" ID="lStuName" style="font-family:'Microsoft JhengHei'" Text="StuName" ForeColor="CadetBlue" Font-Bold="true" /></a>
                                    </li>
                                    <li><a>ACCOUNT</a>
                                        <ul class="sub-menu" style="font-family: Microsoft JhengHei;">
                                            <li><a href="member_info.aspx">My Account</a></li>
                                            <li><a href="track.aspx">Track</a></li>
                                            <li><a href="record.aspx">Record</a></li>
                                            <li><a>
                                                <asp:Button runat="server" Text="Logout" OnClick="Logout_Click" BorderStyle="Solid" BackColor="Black" /></a></li>
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
            <div class="md-content" style="font-family:Microsoft JhengHei;" >

                <section class="md-section" id="blank" style="padding-top: 5%; padding-bottom: 0">
                </section>
                <!-- Section -->
                <section class="md-section" id="id-1">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family:Microsoft JhengHei;">個人資訊</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">
                                    <asp:GridView ID="GridView3" runat="server" CssClass="gvStyle" AutoGenerateColumns="False"
                                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
                                        CellPadding="5" CellSpacing="2" DataKeyNames="帳號" DataSourceID="SqlDataSource3"
                                        ForeColor="Black" PageSize="1" Height="120px" Width="420px" sytle="font-family:微軟正黑體;" Font-Size="Large">
                                        <Columns>
                                            <asp:BoundField DataField="帳號" HeaderText="Student ID" ReadOnly="True" SortExpression="帳號">
                                                <HeaderStyle HorizontalAlign="Center" />
                                                <ItemStyle HorizontalAlign="Justify" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="姓名" HeaderText="Name" SortExpression="姓名" />
                                            <asp:BoundField DataField="電話" HeaderText="Mobile Phone" SortExpression="電話" />
                                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
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
                                </div>
                                <!--End Wrapper-->

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family:Microsoft JhengHei;">帳戶餘額</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="gvStyle" AutoGenerateColumns="False"
                                        DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999"
                                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                        ForeColor="Black" PageSize="2" Font-Size="Medium" Height="140px" Width="115px" Style="font-family: 微軟正黑體;">
                                        <Columns>
                                            <asp:BoundField DataField="餘額" HeaderText="Total Amount" SortExpression="餘額"></asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                        <RowStyle BackColor="White" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                    </asp:GridView>
                                </div>
                                <!-- End / form-wrapper -->
                            </div>
                            <div class="col-lg-5 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">
                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family:Microsoft JhengHei;">修改密碼</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">

                                    <!-- form-item -->
                                    <div class="form-item">
                                        <label class="form__label" style="font-family:Microsoft JhengHei;">
                                            請輸入舊密碼<span>*</span>
                                            <asp:Label ID="OldPassWarn" runat="server" ForeColor="Red"></asp:Label></label>
                                        <asp:TextBox ID="tb_OldPass" runat="server" class="form-control" type="text" name="input" placeholder="" />
                                    </div>
                                    <!-- End / form-item -->


                                    <!-- form-item -->
                                    <div class="form-item">
                                        <label class="form__label" style="font-family:Microsoft JhengHei;">
                                            請輸入新密碼<span>*</span>
                                            <asp:Label ID="NewPassWarn" runat="server" ForeColor="Red"></asp:Label></label>
                                        <asp:TextBox ID="tb_NewPass" runat="server" class="form-control" type="text" name="input" placeholder="" />
                                    </div>
                                    <!-- End / form-item -->


                                    <!-- form-item -->
                                    <div class="form-item">
                                        <label class="form__label" style="font-family:Microsoft JhengHei;">
                                            請再次輸入新密碼<span>*</span>
                                            <asp:Label ID="NewPassAgainWarn" runat="server" ForeColor="Red"></asp:Label></label>
                                        <asp:TextBox ID="tb_NewPassAgain" runat="server" class="form-control" type="text" name="input" placeholder="" />
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item">
                                        <asp:Button runat="server" ID="btn_Confirm" class="md-btn btn-custom" Text="確定" OnClick="Confirm_Click" style="font-family:Microsoft JhengHei;"></asp:Button>&nbsp;&nbsp;
                                       
                                        <asp:Label ID="Alert" runat="server" ForeColor="Red"></asp:Label>
                                    </div>
                                    <!-- End / form-item -->
                                </div>
                                <!-- End / form-wrapper -->
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End / Section -->

                <!-- Section -->
                <section class="md-section" id="id-2">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 ">
                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family:Microsoft JhengHei;">持有股票</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">
                                    <asp:GridView ID="GridView2" runat="server" CssClass="gvStyle" AutoGenerateColumns="False"
                                        DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True"
                                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
                                        CellPadding="4" CellSpacing="2" ForeColor="Black" Height="150px"
                                        Width="450px" Font-Size="Large" Style="font-family: 微軟正黑體;">
                                        <Columns>
                                            <asp:BoundField DataField="股票號碼" HeaderText="股票號碼" SortExpression="股票號碼" />
                                            <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                                            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                            <asp:BoundField DataField="收盤價" HeaderText="收盤價" SortExpression="收盤價" />
                                            <asp:BoundField DataField="收盤價參考時間" HeaderText="收盤價參考時間"
                                                SortExpression="收盤價參考時間" />
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
                                </div>
                            </div>
                            <div class="col-lg-5 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family:Microsoft JhengHei;">所持有股票總價值
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="post__title">
                                            股票總價值
									
                                            <asp:Label ID="lStockValue" runat="server" ForeColor="#669999" Font-Bold="true"></asp:Label>&nbsp;元</label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <label class="post__title">
                                            帳戶總價值
									
                                            <asp:Label ID="lAccountValue" runat="server" ForeColor="#669999" Font-Bold="true"></asp:Label>&nbsp;元</label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item">
                                        <asp:Label ID="Label1" runat="server" ForeColor="#669999" Font-Bold="true"></asp:Label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item">
                                        <label class="form__label">(股票總價值=股票總合價值 , 帳戶總價值=股票總價值+帳戶餘額 )</label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item form-item--half">
                                        <asp:Label ID="Label2" runat="server" ForeColor="#669999" Font-Bold="true"></asp:Label>
                                    </div>
                                    <!-- End / form-item -->


                                    <div class="form-item form-item--half">
                                        <br />

                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="SELECT [帳號], [姓名], [電話], [email],[餘額] FROM [User] WHERE ([帳號] = @帳號)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="Update [User] SET 密碼 =@密碼 WHERE (帳號=@帳號)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="tb_NewPass" Name="密碼" PropertyName="Text" />
                                                <asp:SessionParameter Name="帳號" SessionField="ID" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                      
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="SELECT [餘額] FROM [User] WHERE ([帳號] = @帳號)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="SELECT Own.股票號碼, Stock.名稱, Own.數量, Stock.收盤 AS '收盤價', Stock.時間 AS '收盤價參考時間'FROM Own CROSS JOIN Stock WHERE (Own.帳號 = @帳號) AND (Stock.時間=@時間 ) AND (Own.股票號碼=Stock.代號)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />
                                                <asp:SessionParameter Name="時間" SessionField="Date" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>

                                    </div>
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
                        <p class="footer__copy" style="font-family:'Microsoft JhengHei'">2018 &copy; 國立中興大學科技管理研究所 曾敏涵 All rights Reserved.</p>
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
