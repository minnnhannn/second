<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="record.aspx.cs" Inherits="trading2018.record" %>

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
    <!-- Calender-->
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/hot-sneaks/jquery-ui.css">
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
                                    <li class="current-menu-item"><a href="#Record">RECORD</a>
                                    </li>
                                    <li class="current-menu-parent"><a href="#id-1" style="font-family:'Microsoft JhengHei'">尚未執行</a>
                                    </li>
                                    <li class="current-menu-parent"><a href="#id-2" style="font-family:'Microsoft JhengHei'">成功</a>
                                    </li>
                                    <li class="current-menu-parent"><a href="#id-3" style="font-family:'Microsoft JhengHei'">失敗</a>
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
                <section class="md-section" id="Record">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">Transaction Record</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper" style="border-color: gray; font-family: Microsoft JhengHei">
                                    <div id="id-1">
                                    <h3 class="service__title" style="padding-left: 15px; font-family: Microsoft JhengHei;"><b>尚未執行的交易資料</b></h3>
                                    <br />
                                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True"
                                        AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                                        AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999"
                                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                        ForeColor="Black">
                                        <Columns>
                                            <asp:BoundField DataField="股票號碼" HeaderText="股票號碼" SortExpression="股票號碼" />
                                            <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                                            <asp:BoundField DataField="下單價格" HeaderText="下單價格" SortExpression="下單價格" />
                                            <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                            <asp:BoundField DataField="買賣" HeaderText="買賣" SortExpression="買賣" />
                                            <asp:BoundField DataField="下單時間" HeaderText="下單時間" SortExpression="下單時間" />
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
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                        SelectCommand="SELECT UnsuccessfulRecord.股票號碼,Stock.名稱, UnsuccessfulRecord.價格 AS '下單價格', UnsuccessfulRecord.數量, UnsuccessfulRecord.買賣, UnsuccessfulRecord.下單時間,  Stock.收盤 AS '收盤價', Stock.時間 AS '收盤價參考時間' FROM UnsuccessfulRecord CROSS JOIN Stock WHERE (UnsuccessfulRecord.帳號 = @帳號) AND (UnsuccessfulRecord.股票號碼 = Stock.代號) AND (Stock.時間=@時間) ORDER BY UnsuccessfulRecord.下單時間 DESC"
                                        DeleteCommand="DELETE FROM UnsuccessfulRecord WHERE (帳號 = @帳號) AND (下單時間 = @下單時間) ">
                                        <DeleteParameters>
                                            <asp:Parameter Name="帳號" />
                                            <asp:Parameter Name="下單時間" />
                                        </DeleteParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />
                                            <asp:SessionParameter Name="時間" SessionField="Date" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                    <!-- form-item -->
                                    <div class="form-item">
                                        <h3 class="service__title" style="padding-left: 15px; font-family: Microsoft JhengHei"><b>取消訂單</b></h3>
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            請選擇訂單下單時間<span></span>
                                            <asp:Label ID="Warn" runat="server" ForeColor="Red"></asp:Label></label>
                                        <asp:TextBox ID="datepicker" runat="server" AutoPostBack="true" AutoCompleteType="Disabled" OnTextChanged="TextChanged" Width="200px"></asp:TextBox>
                                        &nbsp<asp:Button runat="server" ID="btn_Confirm" class="md-btn btn-custom" Text="確定" OnClick="Confirm_Click"></asp:Button>
                                    </div>
                                    <!-- End / form-item -->
                                    </div>
                                        <hr>
                                        <div id="id-2">
                                        <h3 class="service__title" style="padding-left: 15px; font-family: Microsoft JhengHei"><b>已成功的交易資料</b></h3>
                                        <br />
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                                            AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                                            AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999"
                                            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                            ForeColor="Black">
                                            <Columns>
                                                <asp:BoundField DataField="股票號碼" HeaderText="股票號碼"
                                                    SortExpression="股票號碼" />
                                                <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                                                <asp:BoundField DataField="下單價格" HeaderText="下單價格" SortExpression="下單價格" />
                                                <asp:BoundField DataField="成交價格" HeaderText="成交價格" SortExpression="成交價格" />
                                                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                                <asp:BoundField DataField="買賣" HeaderText="買賣" SortExpression="買賣" />
                                                <asp:BoundField DataField="交易前餘額" HeaderText="交易前餘額" SortExpression="交易前餘額" />
                                                <asp:BoundField DataField="交易金額" HeaderText="交易金額" SortExpression="交易金額" />
                                                <asp:BoundField DataField="手續費" HeaderText="手續費" SortExpression="手續費" />
                                                <asp:BoundField DataField="證交稅" HeaderText="證交稅" SortExpression="證交稅" />
                                                <asp:BoundField DataField="交易後餘額" HeaderText="交易後餘額" SortExpression="交易後餘額" />
                                                <asp:BoundField DataField="下單時間" HeaderText="下單時間"
                                                    SortExpression="下單時間" />
                                                <asp:BoundField DataField="處理時間" HeaderText="處理時間" SortExpression="處理時間" />
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
                                        <br />
                                        <br />

                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="SELECT Record.股票號碼, Stock.名稱,Record.下單價格, Record.成交價格 , Record.數量, Record.買賣, Record.交易前餘額, Record.交易金額, Record.手續費, Record.證交稅, Record.交易後餘額, Record.下單時間, Record.處理時間, Stock.收盤 AS '收盤價', Stock.時間 AS '收盤價參考時間' FROM Record CROSS JOIN Stock WHERE (Record.帳號 = @帳號) AND (Record.股票號碼 = Stock.代號) AND (Stock.時間 = @時間) ORDER BY Record.下單時間 DESC">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />
                                                <asp:SessionParameter Name="時間" SessionField="Date" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                    </div>
                                        <hr>
                                      <div id="id-3">
                                        <h3 class="service__title" style="padding-left: 15px; font-family: Microsoft JhengHei"><b>失敗的交易資料</b></h3>
                                        <br />
                                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True"
                                            AutoGenerateColumns="False" DataSourceID="SqlDataSource3" PageSize="15"
                                            AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999"
                                            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                            ForeColor="Black">
                                            <Columns>
                                                <asp:BoundField DataField="股票號碼" HeaderText="股票號碼" SortExpression="股票號碼" />
                                                <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                                                <asp:BoundField DataField="下單價格" HeaderText="下單價格" SortExpression="下單價格" />
                                                <asp:BoundField DataField="當日股價" HeaderText="當日股價" SortExpression="當日股價" />
                                                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                                <asp:BoundField DataField="買賣" HeaderText="買賣" SortExpression="買賣" />
                                                <asp:BoundField DataField="交易前餘額" HeaderText="交易前餘額" SortExpression="交易前餘額" />
                                                <asp:BoundField DataField="下單時間" HeaderText="下單時間" SortExpression="下單時間" />
                                                <asp:BoundField DataField="處理時間" HeaderText="處理時間" SortExpression="處理時間" />
                                                <asp:BoundField DataField="備註" HeaderText="備註"
                                                    SortExpression="備註" />
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
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="SELECT FailRecord.股票號碼,Stock.名稱, FailRecord.下單價格, FailRecord.當日股價, FailRecord.數量, FailRecord.買賣, FailRecord.交易前餘額, FailRecord.下單時間, FailRecord.處理時間, FailRecord.備註, Stock.收盤 AS '收盤價', Stock.時間 AS '收盤價參考時間' FROM FailRecord CROSS JOIN Stock WHERE (FailRecord.股票號碼 = Stock.代號) AND (FailRecord.帳號 = @帳號) AND (Stock.時間 = @時間) ORDER BY FailRecord.下單時間 DESC">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="帳號" SessionField="ID" Type="String" />
                                                <asp:SessionParameter Name="時間" SessionField="Date" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="DELETE FROM UnsuccessfulRecord WHERE (下單時間=@下單時間) AND (帳號=@帳號)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="datepicker" Name="下單時間" PropertyName="Text" />
                                                <asp:SessionParameter Name="帳號" SessionField="ID" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
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
        <script type="text/javascript" src="assets/vendors/jquery.pickdate/jquery.pickdate.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
        <!-- App-->
        <script type="text/javascript" src="assets/js/main.js"></script>
    </form>
</body>
</html>

