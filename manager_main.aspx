<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager_main.aspx.cs" Inherits="trading2018.manager_main" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>[ Manager ] NCHU STOCK MONOPOLY</title>
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
            <header class="header header--fixed">
                <div class="container">
                    <div class="header__inner">
                        <div class="header__logo"><a href="home.aspx">
                            <img src="assets/img/logo.png" alt="" /></a></div>
                        <div class="header__menu">

                            <!-- onepage-nav -->
                            <nav class="onepage-nav">

                                <!-- onepage-menu -->
                                <ul class="onepage-menu" style="font-family: Microsoft JhengHei;">
                                    <li class="current-menu-item"><a href="#home">HOME</a>
                                    </li>
                                    <li><a href="#notice">NOTICE</a>
                                    </li>
                                    <li><a href="#rank">RANK</a>
                                    </li>
                                    <li><a href="#blog">BLOG</a>
                                    </li>
                                    <li><a href="#contact">CONTACT</a>
                                    </li>
                                    <li><a>SEARCH</a>
                                        <ul class="sub-menu" style="font-family: Microsoft JhengHei;">
                                            <li><a href="SingleSearch.aspx">Single</a></li>
                                            <li><a href="http://mis.twse.com.tw/stock/index.jsp" target="_blank" style="font-family: 'Microsoft JhengHei'">基本市況報導網站</a></li>
                                        </ul>
                                    </li>
                                    <li><a>MAINTAIN</a>
                                        <ul class="sub-menu" style="font-family: Microsoft JhengHei;">
                                            <li><a href="manager_control.aspx">Control</a></li>
                                            <li><a href="manager_track.aspx">Track</a></li>
                                            <li><a href="manager_record.aspx">Record</a></li>
                                        </ul>
                                    </li>
                                    <li><a style="color: CadetBlue">Hello,
                                       
                                        <asp:Label runat="server" ID="lStuName" Style="font-family: 'Microsoft JhengHei'" Text="StuName" ForeColor="CadetBlue" Font-Bold="true" /></a>
                                    </li>
                                    <li><a>
                                        <asp:Button runat="server" Text="Logout" OnClick="Logout_Click" BackColor="White" BorderStyle="None" /></a>

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
                <!-- hero -->
                <div class="hero" id="home" style="background-image: url('assets/img/bg/1.jpg');">
                    <div class="hero__wrapper">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8 ">
                                    <h1 class="hero__title" style="font-family: Microsoft JhengHei;">中興股票大亨
										
									

                                        <!-- typing__module -->
                                        <div class="typing__module" data-options='{"typeSpeed":60}'>
                                            <div class="typed-strings">
                                                <span>虛擬</span><span>交易</span><span>平台</span>
                                            </div>
                                            <span class="typed"></span>
                                        </div>
                                        <!-- End / typing__module -->

                                    </h1>
                                    <p class="hero__text">Welcome Stock Manager! !</p>
                                </div>
                            </div>
                            <a id="back-to-down" href="#notice"><i class="pe-7s-angle-down"></i></a>
                        </div>
                    </div>
                </div>
                <!-- End / hero -->


                <!-- Section -->
                <section class="md-section bg-gray" id="notice">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 ">

                                <!-- slide-image -->
                                <div class="slide-image">

                                    <!-- swiper__module swiper-container -->
                                    <div class="swiper__module swiper-container slide-image__front" data-options='{"slidesPerView":1,"spaceBetween":0}'>
                                        <div class="swiper-wrapper">
                                            <div class="slide-item" style="background-image: url('assets/img/about/1.jpg');"></div>
                                            <div class="slide-item" style="background-image: url('assets/img/about/2.jpg');"></div>
                                            <div class="slide-item" style="background-image: url('assets/img/about/3.jpg');"></div>
                                        </div>
                                        <div class="swiper-pagination-custom"></div>
                                    </div>
                                    <!-- End / swiper__module swiper-container -->


                                    <!-- swiper-thumbnails__module swiper-container -->
                                    <div class="swiper-thumbnails__module swiper-container slide-image__black" data-options='{"slidesPerView":1,"spaceBetween":0,"delay":10000}'>
                                        <div class="swiper-wrapper">
                                            <div class="slide-item" style="background-image: url('assets/img/about/1b.jpg');"></div>
                                            <div class="slide-item" style="background-image: url('assets/img/about/2b.jpg');"></div>
                                            <div class="slide-item" style="background-image: url('assets/img/about/3b.jpg');"></div>
                                        </div>
                                    </div>
                                    <!-- End / swiper-thumbnails__module swiper-container -->

                                </div>
                                <!-- End / slide-image -->

                            </div>
                            <div class="col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family: Microsoft JhengHei;">系統公告</h2>
                                </div>
                                <!-- End / title -->

                                <p class="fz-16">Duis porttitor libero ac egestas euismod. Maecenas quis felis turpis. Nulla quis turpis sed augue</p>
                                <p class="fz-16">
                                    <asp:Label ID="lMessage" runat="server" Font-Names="Microsoft JhengHei"></asp:Label></p>
                            </div>
                        </div>

                        <!-- swiper__module swiper-container -->
                        <div class="swiper__module swiper-container mt-50" data-options='{"slidesPerView":3,"spaceBetween":30,"autoplay":2000,"breakpoints":{"640":{"slidesPerView":1},"991":{"slidesPerView":2}}}'>
                            <div class="swiper-wrapper">

                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-paint-bucket"></i></div>
                                    <h3 class="service__title">Social Media</h3>
                                    <p class="service__text">Suspendisse ac elit vitae est lacinia interdum eu sit amet mauris. Phasellus</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-paint-bucket"></i></div>
                                    <h3 class="service__title">Social Media</h3>
                                    <p class="service__text">Integer placerat ullamcorper urna nec rhoncus. Sed velit justo, lacinia non</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-lintern"></i></div>
                                    <h3 class="service__title">Investment Planning</h3>
                                    <p class="service__text">Mauris lacinia venenatis dolor sit amet viverra. Integer malesuada nulla neque.</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-gleam"></i></div>
                                    <h3 class="service__title">Risk Management</h3>
                                    <p class="service__text">Curabitur elementum urna augue, eu porta purus gravida in. Cras consectetur,</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-anchor"></i></div>
                                    <h3 class="service__title">Marketing Planning</h3>
                                    <p class="service__text">Duis porttitor libero ac egestas euismod. Maecenas quis felis turpis. Nulla quis</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-refresh"></i></div>
                                    <h3 class="service__title">Site Security</h3>
                                    <p class="service__text">Etiam non varius justo, vel tempor mi. Nulla facilisi. Fusce at tortor arcu.</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-joy"></i></div>
                                    <h3 class="service__title">Risk Management</h3>
                                    <p class="service__text">Integer placerat ullamcorper urna nec rhoncus. Sed velit justo, lacinia non</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-lock"></i></div>
                                    <h3 class="service__title">Investment Planning</h3>
                                    <p class="service__text">Mauris lacinia venenatis dolor sit amet viverra. Integer malesuada nulla neque.</p>
                                </div>
                                <!-- End / service -->


                                <!-- service -->
                                <div class="service mb-0">
                                    <div class="service__icon"><i class="pe-7s-magnet"></i></div>
                                    <h3 class="service__title">Site Security</h3>
                                    <p class="service__text">Nam elit ligula, egestas et ornare non, viverra eu justo. Aliquam ornare lectus</p>
                                </div>
                                <!-- End / service -->

                            </div>
                        </div>
                        <!-- End / swiper__module swiper-container -->

                    </div>
                </section>
                <!-- End / Section -->


                <!-- Section -->
                <section class="md-section" id="rank">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">portfolio</h2>
                                </div>
                                <!-- End / title -->

                            </div>
                        </div>
                        <div class="grid-css grid-css--grid" data-col-lg="3" data-col-md="2" data-col-sm="2" data-col-xs="1" data-gap="30">
                            <div class="filter">
                                <ul class="filter__list">
                                    <li><a href="#" data-filter="*">All</a></li>
                                    <li><a href="#" data-filter=".cat1" style="font-family: 'Microsoft JhengHei'">排名</a></li>
                                    <li><a href="#" data-filter=".cat2" style="font-family: 'Microsoft JhengHei'">整體帳戶總價值</a></li>
                                </ul>
                            </div>
                            <div class="grid__inner">
                                <div class="grid-sizer"></div>
                                <div class="grid-item normal cat1">
                                    <div class="grid-item__inner">
                                        <div class="grid-item__content-wrapper" style="background: #ffffff; height: 600px">

                                            <div class="form-wrapper">
                                                <!-- title -->
                                                <div class="title">
                                                    <h2 class="title__title" style="font-family: Microsoft JhengHei; text-align: center">今日個人排名</h2>
                                                </div>
                                                <!-- End / title -->
                                                <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
                                                    CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1"
                                                    ForeColor="Black" HorizontalAlign="Center" Height="212px" Width="259px" Style="text-align: center">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="排名" HeaderText="排名" SortExpression="排名" />
                                                        <asp:BoundField DataField="姓名" HeaderText="姓名" ReadOnly="True"
                                                            SortExpression="姓名" />
                                                        <asp:BoundField DataField="帳戶總價值" HeaderText="帳戶總價值" SortExpression="帳戶總價值" />
                                                    </Columns>
                                                    <FooterStyle BackColor="Yellow" BorderColor="#993399" />
                                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"
                                                        BorderColor="#CCFFCC" Font-Size="Larger" Font-Underline="False" />
                                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="White" />
                                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                                </asp:GridView>--%>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="grid-item normal cat1">
                                    <div class="grid-item__inner">
                                        <div class="grid-item__content-wrapper" style="background: #ffffff; height: 600px">

                                            <div class="form-wrapper">
                                                <!-- title -->
                                                <div class="title">
                                                    <h2 class="title__title" style="font-family: Microsoft JhengHei; text-align: center">今日團體排名</h2>
                                                </div>
                                                <!-- End / title -->
                                                <%--<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"
                                                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
                                                    CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource3"
                                                    ForeColor="Black" HorizontalAlign="Center" Height="212px" Width="259px" Style="text-align: center">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="排名" HeaderText="排名" SortExpression="排名" />
                                                        <asp:BoundField DataField="姓名" HeaderText="姓名" ReadOnly="True"
                                                            SortExpression="姓名" />
                                                        <asp:BoundField DataField="帳戶總價值" HeaderText="帳戶總價值" SortExpression="帳戶總價值" />
                                                    </Columns>
                                                    <FooterStyle BackColor="Yellow" BorderColor="#993399" />
                                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"
                                                        BorderColor="#CCFFCC" Font-Size="Larger" Font-Underline="False" />
                                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="White" />
                                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                                </asp:GridView>--%>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                <div class="grid-item normal cat1">
                                    <div class="grid-item__inner">
                                        <div class="grid-item__content-wrapper" style="background: #ffffff; height: 600px">

                                            <div class="form-wrapper">
                                                <!-- title -->
                                                <div class="title">
                                                    <h2 class="title__title" style="font-family: Microsoft JhengHei; text-align: center">倒數排名</h2>
                                                </div>
                                                <!-- End / title -->
                                                <%-- <asp:GridView
                                                    ID="GridView2" runat="server" AutoGenerateColumns="False"
                                                    DataSourceID="SqlDataSource2" HorizontalAlign="Center"
                                                    Style="text-align: center" BackColor="#CCCCCC" BorderColor="#999999"
                                                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                                    ForeColor="Black">
                                                    <Columns>
                                                        <asp:BoundField DataField="帳戶總價值" HeaderText="帳戶總價值" ReadOnly="True"
                                                            SortExpression="帳戶總價值" />
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
                                                </asp:GridView>--%>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                <div class="grid-item normal cat2">
                                    <div class="grid-item__inner">
                                        <div class="grid-item__content-wrapper" style="background: #e5e5e5">

                                            <div class="form-wrapper">
                                                <!-- title -->
                                                <div class="title">
                                                    <h2 class="title__title" style="font-family: Microsoft JhengHei; padding-top: 15px; padding-left: 50px">今日整體帳戶總價值 平均</h2>
                                                </div>
                                                <!-- End / title -->
                                                <center><asp:Label ID="lAvg" runat="server" Style="font-size: medium"></asp:Label></center>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                                <div class="grid-item normal cat2">
                                    <div class="grid-item__inner">
                                        <div class="grid-item__content-wrapper" style="background: #e5e5e5">

                                            <div class="form-wrapper">
                                                <!-- title -->
                                                <div class="title">
                                                    <h2 class="title__title" style="font-family: Microsoft JhengHei; padding-top: 15px; padding-left: 50px">今日整體帳戶總價值 標準差</h2>
                                                </div>
                                                <!-- End / title -->
                                                <center><asp:Label ID="lSd" runat="server" Style="font-size: medium"></asp:Label></center>

                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                                    ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                                    SelectCommand="SELECT [排名], SUBSTRING ( 姓名 ,1 , 1 )+'O'+SUBSTRING ( 姓名 ,3 , 1 )+' 同學' as '姓名', [帳戶總價值] FROM [Value] ORDER BY [排名]"></asp:SqlDataSource>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                                    ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                                    SelectCommand="SELECT [排名], [姓名], [帳戶總價值] FROM [GRank] ORDER BY [排名]"></asp:SqlDataSource>
                                                <br />
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                                    ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                                    SelectCommand="SELECT distinct TOP 3 CASE WHEN NOT EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) Then [User].餘額 WHEN EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) THEN SUM(Stock.收盤*1000*Own.數量)+[User].餘額 END AS'帳戶總價值' FROM [User],Stock,Own  WHERE (Stock.時間=@時間) AND (Own.股票號碼=Stock.代號) AND [User].帳號=(case when EXISTS(select [User].姓名 FROM Own WHERE [User].帳號=Own.帳號) then (Own.帳號) else ([User].帳號) end ) group by [User].姓名,[User].餘額,[User].帳號,[OWN].帳號 Order by 帳戶總價值 ">
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="時間" SessionField="Date" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <!-- End / Section -->


                <!-- Section -->
                <section class="md-section bg-gray" id="blog">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">>From the blog</h2>
                                </div>
                                <!-- End / title -->

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 ">

                                <!--  -->
                                <div>
                                    <div class="post__media">
                                        <a href="#">
                                            <img src="assets/img/blog/1.jpg" alt="" /></a>
                                    </div>
                                    <div class="post__body">
                                        <h2 class="post__title"><a href="http://www.rich01.com/2015/07/blog-post.html" style="font-family: 'Microsoft JhengHei'">我要怎麼開始學投資？</a></h2>
                                        <div class="post__meta"><span class="author"><a href="#">Ashley Mills</a></span><span class="date">May 26, 2014</span></div>
                                        <p class="post__text">Suspendisse ac elit vitae est lacinia interdum eu sit amet mauris. Phasellus aliquam nisi sit amet libero mattis ornare. In varius</p>
                                    </div>
                                </div>
                                <!-- End /  -->

                            </div>
                            <div class="col-lg-4 ">

                                <!--  -->
                                <div>
                                    <div class="post__media">
                                        <a href="#">
                                            <img src="assets/img/blog/2.jpg" alt="" /></a>
                                    </div>
                                    <div class="post__body">
                                        <h2 class="post__title"><a href="http://www.rich01.com/2014/05/5.html" style="font-family: 'Microsoft JhengHei'">投資開始前，先準備好「這5件事」</a></h2>
                                        <div class="post__meta"><span class="author"><a href="#">Bryan Ryan</a></span><span class="date">June 17, 2014</span></div>
                                        <p class="post__text">Mauris lacinia venenatis dolor sit amet viverra. Integer malesuada nulla neque. Sed rutrum ligula eu sagittis volutpat. Aliquam</p>
                                    </div>
                                </div>
                                <!-- End /  -->

                            </div>
                            <div class="col-lg-4 ">

                                <!--  -->
                                <div>
                                    <div class="post__media">
                                        <a href="#">
                                            <img src="assets/img/blog/3.jpg" alt="" /></a>
                                    </div>
                                    <div class="post__body">
                                        <h2 class="post__title"><a href="#">Design a Perfect Homepage</a></h2>
                                        <div class="post__meta"><span class="author"><a href="#">Alice Brooks</a></span><span class="date">Jan 23, 2018</span></div>
                                        <p class="post__text">Sed ante nisl, fermentum et facilisis in, maximus sed ipsum. Cras hendrerit feugiat eros, ut fringilla nunc finibus sed. Quisque</p>
                                    </div>
                                </div>
                                <!-- End /  -->

                            </div>
                        </div>
                    </div>
                </section>
                <!-- End / Section -->


                <!-- Section -->
                <section class="md-section" id="contact">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">About STOCK</h2>
                                </div>
                                <!-- End / title -->

                                <div class="mb-40">

                                    <!-- contact -->
                                    <div class="contact">
                                        <h3 class="contact__title" style="font-family: 'Microsoft JhengHei'">任何系統問題請詢問此窗口</h3>
                                        <div><a href="mailto:cv727320@gmail.com">cv727320@gmail.com</a></div>
                                    </div>
                                    <!-- End / contact -->


                                    <!-- contact -->
                                    <div class="contact">
                                        <h3 class="contact__title" style="font-family: 'Microsoft JhengHei'">股票相關連結</h3>
                                        <div><a href="http://www.wantgoo.com/" style="font-family: 'Microsoft JhengHei'">玩股網</a></div>
                                        <div><a href="https://tw.stock.yahoo.com/" style="font-family: 'Microsoft JhengHei'">Yahoo!奇摩股市</a></div>
                                        <div><a href="http://www.tse.com.tw/ch/index.php" style="font-family: 'Microsoft JhengHei'">臺灣證券交易所</a></div>
                                        <div><a href="http://www.cnyes.com/" style="font-family: 'Microsoft JhengHei'">鉅亨網</a></div>
                                    </div>
                                    <!-- End / contact -->

                                </div>
                            </div>
                            <div class="col-lg-5 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">ABOUT Course</h2>
                                </div>
                                <!-- End / title -->

                                <div class="mb-40">

                                    <!-- contact -->
                                    <div class="contact">
                                        <h3 class="contact__title" style="font-family: 'Microsoft JhengHei'">張樹之教授</h3>
                                        <div><a href="http://web.nchu.edu.tw/~eschang/eschang.htm" style="font-family: 'Microsoft JhengHei'">Prof. Chang</a></div>
                                        <div><a href="http://web.nchu.edu.tw/~eschang/courseDir/SISP.htm" style="font-family: 'Microsoft JhengHei'">Course Slides</a></div>
                                    </div>
                                    <!-- End / contact -->

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

