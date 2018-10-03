<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singlesearch.aspx.cs" Inherits="trading2018.singlesearch" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title id="titleshow" runat="server"></title>
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
input::placeholder {
  color:darkgrey;
  font-size: 0.8em;
}
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
                                <ul class="onepage-menu" style="font-family: Microsoft JhengHei;" runat="server" id="usermenu">
                                    <li class="current-menu-item"><a href="#singlesearch">SINGLE SEARCH</a>
                                    </li>

                                    <li><a href="search.aspx">SEARCH</a>
                                        <ul class="sub-menu" style="font-family: Microsoft JhengHei;">
                                            <li><a href="singleasearch.aspx">Single</a></li>
                                            <li><a href="http://mis.twse.com.tw/stock/index.jsp" target="_blank" style="font-family: 'Microsoft JhengHei'">基本市況報導網站</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="transaction.aspx">TRANSACTION</a>
                                    </li>
                                    <li><a style="color: CadetBlue">Hello,
                                       
                                        <asp:Label runat="server" ID="lStuName" Style="font-family: 'Microsoft JhengHei'" Text="StuName" ForeColor="CadetBlue" Font-Bold="true"></asp:Label></a>
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

                                <!-- onepage-menu -->
								<ul class="onepage-menu" style="font-family:Microsoft JhengHei;" runat="server" id="managermenu">
									<li class="current-menu-item"><a href="#singlesearch">SINGLE SEARCH</a>
									</li>
									
									<li><a>SEARCH</a>
                                        <ul class="sub-menu" style="font-family:Microsoft JhengHei;">
                                            <li><a href="SingleSearch.aspx">Single</a></li>
											<li><a href="http://mis.twse.com.tw/stock/index.jsp" target="_blank" style="font-family: 'Microsoft JhengHei'">基本市況報導網站</a></li>
                                        </ul>
									</li>
									<li><a>MAINTAIN</a>
                                        <ul class="sub-menu" style="font-family:Microsoft JhengHei;">
                                            <li><a href="manager_control.aspx">Control</a></li>
                                            <li><a href="manager_track.aspx">Track</a></li>
                                            <li><a href="manager_record.aspx">Record</a></li>
                                        </ul>
									</li>
                                    <li><a style="color:CadetBlue">Hello,
                                        <asp:Label runat="server" id="lStuName2" style="font-family:'Microsoft JhengHei'" Text="StuName" ForeColor="CadetBlue" Font-Bold="true"/></a>
									</li>
                                    <li><a><asp:Button runat="server" Text="Logout" OnClick="Logout_Click" backcolor="White" BorderStyle="None"/></a>

									</li>
								</ul><!-- onepage-menu -->

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
                <section class="md-section" id="ORDER">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family: 'Microsoft JhengHei'">請輸入搜尋資訊</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">

                                    <!-- form-item -->
                                    <div class="form-item">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            股票代號</label>
                                                <asp:TextBox ID="tb_SID" runat="server" class="form-control" type="text" name="input" placeholder="代號" Font-Names="Microsoft JhengHei" Width="130px"/>
                                                &nbsp &nbsp<asp:Button runat="server" ID="btn_search" class="md-btn btn-custom" Style="font-family: 'Microsoft JhengHei'" Text="search" Font-Size="XX-Small" OnClick="Confirm_Click"></asp:Button></label>
                                            <asp:Label ID="lMessage" runat="server"></asp:Label>
                                    </div>
                                    <!-- End / form-item -->

                                    <!-- form-item -->
                                    <div class="form-item" id="usershow" runat="server">
                                        <label class="form__label" style="font-family: 'Microsoft JhengHei'">
                                            股票名稱 ( 可輸入部分名稱 )
                                       
                                            <label class="form__label">
                                                <asp:TextBox ID="tb_SNAME" runat="server" class="form-control" type="text" name="input" placeholder="名稱" Font-Names="Microsoft JhengHei" Width="130px"/>
                                                &nbsp &nbsp<asp:Button runat="server" ID="btn_search2" class="md-btn btn-custom" Style="font-family: 'Microsoft JhengHei'" Text="search" Font-Size="XX-Small" OnClick="Confirm_Click2"></asp:Button></label>
                                            <asp:Label ID="lMessage2" runat="server"></asp:Label>
                                    </div>
                                    <!-- End / form-item -->

                                </div>
                            </div>
                            <div class="col-lg-7 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title" style="font-family: 'Microsoft JhengHei'">搜尋結果</h2>
                                </div>
                                <!-- End / title -->

                                <div class="form-wrapper">

                                    <!-- manager table -->
                                    <div class="form-item" id="m_sid" runat="server">
                                        <!-- 管理者 -->
                                        <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="SELECT * FROM [Stock] WHERE ([代號] = @代號) ORDER BY [時間] DESC"
                                            DeleteCommand="DELETE FROM [Stock] WHERE [代號] = @代號 AND [時間] = @時間"
                                            InsertCommand="INSERT INTO [Stock] ([代號], [名稱], [開盤], [最高], [最低], [收盤], [成交量], [時間]) VALUES (@代號, @名稱, @開盤, @最高, @最低, @收盤, @成交量, @時間)"
                                            UpdateCommand="UPDATE [Stock] SET [名稱] = @名稱, [開盤] = @開盤, [最高] = @最高, [最低] = @最低, [收盤] = @收盤, [成交量] = @成交量 WHERE [代號] = @代號 AND [時間] = @時間">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Text1" Name="代號" PropertyName="Text"
                                                    Type="String" />
                                            </SelectParameters>
                                            <DeleteParameters>
                                                <asp:Parameter Name="代號" Type="String" />
                                                <asp:Parameter Name="時間" Type="String" />
                                            </DeleteParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="名稱" Type="String" />
                                                <asp:Parameter Name="開盤" Type="Double" />
                                                <asp:Parameter Name="最高" Type="Double" />
                                                <asp:Parameter Name="最低" Type="Double" />
                                                <asp:Parameter Name="收盤" Type="Double" />
                                                <asp:Parameter Name="成交量" Type="Double" />
                                                <asp:Parameter Name="代號" Type="String" />
                                                <asp:Parameter Name="時間" Type="String" />
                                            </UpdateParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="代號" Type="String" />
                                                <asp:Parameter Name="名稱" Type="String" />
                                                <asp:Parameter Name="開盤" Type="Double" />
                                                <asp:Parameter Name="最高" Type="Double" />
                                                <asp:Parameter Name="最低" Type="Double" />
                                                <asp:Parameter Name="收盤" Type="Double" />
                                                <asp:Parameter Name="成交量" Type="Double" />
                                                <asp:Parameter Name="時間" Type="String" />
                                            </InsertParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"
                                            DataKeyNames="代號,時間" DataSourceID="SqlDataSource1" AllowPaging="True"
                                            AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999"
                                            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                            ForeColor="Black">
                                            <Columns>
                                                <asp:TemplateField ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                            CommandName="Update" Text="更新" OnClientClick="return confirm('確認要更新嗎？');"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Cancel" Text="取消" OnClientClick="return confirm('確認要取消嗎？');"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                            CommandName="Edit" Text="編輯" OnClientClick="return confirm('確認要編輯嗎？');"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認要刪除嗎？');"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
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
                                        </asp:GridView>--%>
                                    </div>

                                    <!-- fuser table -->
                                    <div class="form-item" id="usertable" runat="server">
                                        <%--<asp:GridView ID="GridView1" runat="server" CssClass="gvStyle" AutoGenerateColumns="False"
                                            DataKeyNames="代號,時間" DataSourceID="SqlDataSource1" PageSize="15"
                                            AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC"
                                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                                            CellSpacing="2" ForeColor="Black" Height="450px" Width="550px"
                                            Style="font-family: 微軟正黑體;" Font-Size="10">
                                            <Columns>
                                                <asp:BoundField DataField="代號" HeaderText="代號" ReadOnly="True"
                                                    SortExpression="代號" />
                                                <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                                                <asp:BoundField DataField="開盤" HeaderText="開盤" SortExpression="開盤" />
                                                <asp:BoundField DataField="收盤" HeaderText="收盤" SortExpression="收盤" />
                                                <asp:BoundField DataField="最高" HeaderText="最高" SortExpression="最高" />
                                                <asp:BoundField DataField="最低" HeaderText="最低" SortExpression="最低" />
                                                <asp:BoundField DataField="昨收" HeaderText="昨收" SortExpression="昨收" />
                                                <asp:BoundField DataField="成交量" HeaderText="成交量" SortExpression="成交量" />
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
                                        <br />
                                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True"
                                            AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC"
                                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                                            CellSpacing="2" DataKeyNames="代號,時間" DataSourceID="SqlDataSource2"
                                            ForeColor="Black" PageSize="15" Height="450px" Width="550px"
                                            Style="font-family: 微軟正黑體;" Font-Size="10">
                                            <Columns>
                                                <asp:BoundField DataField="代號" HeaderText="代號" ReadOnly="True"
                                                    SortExpression="代號" />
                                                <asp:BoundField DataField="名稱" HeaderText="名稱" SortExpression="名稱" />
                                                <asp:BoundField DataField="開盤" HeaderText="開盤" SortExpression="開盤" />
                                                <asp:BoundField DataField="收盤" HeaderText="收盤" SortExpression="收盤" />
                                                <asp:BoundField DataField="最高" HeaderText="最高" SortExpression="最高" />
                                                <asp:BoundField DataField="最低" HeaderText="最低" SortExpression="最低" />
                                                <asp:BoundField DataField="昨收" HeaderText="昨收" SortExpression="昨收" />
                                                <asp:BoundField DataField="成交量" HeaderText="成交量" SortExpression="成交量" />
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
                                            SelectCommand="SELECT * FROM [Stock] WHERE ([代號] = @代號) ORDER BY [時間] DESC">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Text1" Name="代號" PropertyName="Text"
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            SelectCommand="SELECT * FROM [Stock] WHERE ([名稱] LIKE '%' + @名稱 + '%') ORDER BY [代號], [時間] DESC">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Text2" Name="名稱" PropertyName="Text"
                                                    Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>--%>
                                    </div>
                                    <!-- End / form-item -->

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
                        <p class="footer__copy" style="font-family:'Microsoft JhengHei'">
                            2018 &copy; 國立中興大學科技管理研究所 曾敏涵 All rights Reserved.
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

