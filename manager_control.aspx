<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager_control.aspx.cs" Inherits="trading2018.manager_control" %>

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
                            <a href="manager_main.aspx">
                                <img src="assets/img/logo.png" alt="" /></a>
                        </div>
                        <div class="header__menu">

                            <!-- onepage-nav -->
                            <nav class="onepage-nav">

                                <!-- onepage-menu -->
                                <ul class="onepage-menu" style="font-family: Microsoft JhengHei;">
                                    <li class="current-menu-item"><a href="#id-1">CONTROL</a>
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
                                       
                                        <asp:Label runat="server" ID="lStuName" style="font-family:'Microsoft JhengHei'" Text="StuName" ForeColor="CadetBlue" Font-Bold="true" /></a>
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

                <section class="md-section" id="blank" style="padding-top: 5%; padding-bottom: 0">
                </section>
                <!-- Section -->
                <section class="md-section" id="Control">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 ">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">Manager Control</h2>
                                </div>
                                <!-- End / title -->

                            </div>
                        </div>
                        <div class="grid-css grid-css--grid" data-col-lg="1" data-col-md="2" data-col-sm="2" data-col-xs="1" data-gap="30">
                            <div class="filter">
                                <ul class="filter__list">
                                    <li><a href="#" data-filter="*">All</a></li>
                                    <li><a href="#" data-filter=".cat1">Account Management</a></li>
                                    <li><a href="#" data-filter=".cat2">Stockholders</a></li>
                                </ul>
                            </div>
                            <div class="grid__inner">
                                <div class="grid-sizer"></div>

                                <div class="grid-item normal cat1" style="height:450px">
                                    <div class="grid-item__inner">
                                        <div class="grid-item__content-wrapper" style="background: #ffffff ; height:450px">
                                            <div class="col-lg-5">
                                                <div class="form-wrapper">
                                                    <!-- title -->
                                                    <div class="title">
                                                        <h2 class="title__title" style="font-family: Microsoft JhengHei;">新增會員</h2>
                                                    </div>
                                                    <!-- End / title -->
                                                    <!-- form-item -->
                                                    <div class="form-item form-item--half">  
                                                        <asp:TextBox ID="tb_AddName" runat="server" class="form-control" type="text" name="input" placeholder="Name" />
                                                    </div>
                                                    <!-- End / form-item -->

                                                    <!-- form-item -->
                                                    <div class="form-item form-item--half">
                                                        <asp:TextBox ID="tb_AddID" runat="server" class="form-control" type="text" name="input" placeholder="ID" />
                                                    </div>
                                                    <!-- End / form-item -->

                                                    <!-- form-item -->
                                                    <div class="form-item form-item--half">
                                                        <asp:TextBox ID="tb_AddPass" runat="server" class="form-control" type="text" name="input" placeholder="Password" />
                                                    </div>
                                                    <!-- End / form-item -->

                                                    <!-- form-item -->
                                                    <div class="form-item form-item--half">
                                                        <asp:TextBox ID="tb_AddMail" runat="server" class="form-control" type="text" name="input" placeholder="E-mail" />
                                                    </div>
                                                    <!-- End / form-item -->

                                                    <!-- form-item -->
                                                    <div class="form-item form-item--half">
                                                        <asp:TextBox ID="tb_AddPhone" runat="server" class="form-control" type="text" name="input" placeholder="Phone" />
                                                    </div>
                                                    <!-- End / form-item -->

                                                    <!-- form-item -->
                                                    <div class="form-item form-item--half">
                                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                            <asp:ListItem Selected="True" Value="Member">一般會員&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                                            <asp:ListItem Value="Manager">管理員</asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                    <!-- End / form-item -->
                                                    </br>
                                                    <!-- form-item -->
                                                    <div class="form-item" style="padding-left: 50px">
                                                        <asp:Button ID="User_Add" runat="server" Text="新增" OnClick="UserAdd_Click" Style="font-family: Microsoft JhengHei;" Font-Bold="true" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="User_Clear" runat="server" Text="清除" OnClick="UserClear_Click" Style="font-family: Microsoft JhengHei;" Font-Bold="true" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="lmessage" runat="server" Text=""></asp:Label>
                                                    </div>
                                                    <!-- End / form-item -->
                                                    <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                                    ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                                    SelectCommand="INSERT INTO [User] (帳號, 密碼, 姓名, 電話, email,身份,餘額) VALUES (@帳號, @密碼, @姓名, @電話, @email,@身份,@餘額)"
                                                    DeleteCommand="DELETE FROM [User] WHERE [帳號] = @帳號"
                                                    InsertCommand="INSERT INTO [User] (帳號, 密碼, 姓名, 性別, 電話, 身份,餘額) VALUES (@帳號, @密碼, @姓名, @性別, @電話, @身份,@餘額)"
                                                    UpdateCommand="UPDATE [User] SET [密碼] = @密碼, [姓名] = @姓名, [電話] = @電話, [身份] = @身份 WHERE [帳號] = @帳號">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="tb_AddID" Name="帳號" PropertyName="Text" />
                                                        <asp:ControlParameter ControlID="tb_AddPass" Name="密碼"
                                                            PropertyName="Text" />
                                                        <asp:ControlParameter ControlID="tb_AddName" Name="姓名" PropertyName="Text" />
                                                        <asp:ControlParameter ControlID="tb_AddPhone" Name="電話" PropertyName="Text" />
                                                        <asp:ControlParameter ControlID="tb_AddMail" Name="email" PropertyName="Text" />
                                                        <asp:ControlParameter ControlID="RadioButtonList1" Name="身分" PropertyName="Text" />
                                                        <asp:Parameter DefaultValue="1000000" Name="餘額" />
                                                    </SelectParameters>
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="帳號" Type="String" />
                                                    </DeleteParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="密碼" Type="String" />
                                                        <asp:Parameter Name="姓名" Type="String" />
                                                        <asp:Parameter Name="電話" Type="String" />
                                                        <asp:Parameter Name="身份" Type="String" />
                                                        <asp:Parameter Name="帳號" Type="String" />
                                                    </UpdateParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="帳號" Type="String" />
                                                        <asp:Parameter Name="密碼" Type="String" />
                                                        <asp:Parameter Name="姓名" Type="String" />
                                                        <asp:Parameter Name="性別" Type="String" />
                                                        <asp:Parameter Name="電話" Type="String" />
                                                        <asp:Parameter Name="身份" Type="String" />
                                                        <asp:Parameter Name="餘額" />
                                                    </InsertParameters>
                                                </asp:SqlDataSource>--%>
                                                </div>
                                                <!-- End / form-wrapper -->
                                            </div>

                                            <div class="col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 ">
                                                <div class="form-wrapper">
                                                    <!-- title -->
                                                    <div class="title">
                                                        <h2 class="title__title" style="font-family: Microsoft JhengHei;">帳戶</h2>
                                                    </div>
                                                    <!-- End / title -->
                                                    <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                                                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="帳號"
                                                    DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999"
                                                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                                    ForeColor="Black" Style="font-family: 微軟正黑體;">
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
                                                        <asp:BoundField DataField="帳號" HeaderText="帳號" ReadOnly="True"
                                                            SortExpression="帳號" />
                                                        <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
                                                        <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                                                        <asp:BoundField DataField="電話" HeaderText="電話" SortExpression="電話" />
                                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                                        <asp:BoundField DataField="身份" HeaderText="身份" SortExpression="身份" />
                                                        <asp:BoundField DataField="餘額" HeaderText="餘額" SortExpression="餘額" />
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
                                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:SQLDB %>" 
                                    DeleteCommand="DELETE FROM [User] WHERE [帳號] = @帳號" 
                                    InsertCommand="INSERT INTO [User] ([帳號], [密碼], [姓名], [性別], [電話], [身份], [餘額]) VALUES (@帳號, @密碼, @姓名, @性別, @電話, @身份, @餘額)" 
                                    SelectCommand="SELECT * FROM [User]" 
                                    UpdateCommand="UPDATE [User] SET [密碼] = @密碼, [姓名] = @姓名, [性別] = @性別, [電話] = @電話, [身份] = @身份, [餘額] = @餘額 WHERE [帳號] = @帳號">
                                    <DeleteParameters>
                                        <asp:Parameter Name="帳號" Type="String" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="密碼" Type="String" />
                                        <asp:Parameter Name="姓名" Type="String" />
                                        <asp:Parameter Name="性別" Type="String" />
                                        <asp:Parameter Name="電話" Type="String" />
                                        <asp:Parameter Name="身份" Type="String" />
                                        <asp:Parameter Name="餘額" Type="Double" />
                                        <asp:Parameter Name="帳號" Type="String" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="帳號" Type="String" />
                                        <asp:Parameter Name="密碼" Type="String" />
                                        <asp:Parameter Name="姓名" Type="String" />
                                        <asp:Parameter Name="性別" Type="String" />
                                        <asp:Parameter Name="電話" Type="String" />
                                        <asp:Parameter Name="身份" Type="String" />
                                        <asp:Parameter Name="餘額" Type="Double" />
                                    </InsertParameters>
                                </asp:SqlDataSource>--%>
                                                </div>
                                            </div>
                                            <!-- End / form-wrapper -->
                                        </div>
                                    </div>
                                </div>

                                <div class="grid-item normal cat2">
                                    <div class="grid-item__inner">
                                        <div class="grid-item__content-wrapper" style="background: #ffffff">
                                            <div class="form-wrapper">
                                                <!-- title -->
                                                <div class="title">
                                                    <h2 class="title__title" style="font-family: Microsoft JhengHei;padding-left:15px">帳戶持有股票</h2>
                                                </div>
                                                <!-- End / title -->
                                                <%--<asp:GridView ID="GridView2" runat="server" AllowPaging="True"
                                                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="帳號,股票號碼"
                                                    DataSourceID="SqlDataSource2" BackColor="#CCCCCC" BorderColor="#999999"
                                                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                                    ForeColor="Black" Style="font-family: 微軟正黑體;">
                                                    <Columns>
                                                        <asp:CommandField ShowEditButton="True" />
                                                        <asp:BoundField DataField="帳號" HeaderText="帳號" ReadOnly="True"
                                                            SortExpression="帳號" />
                                                        <asp:BoundField DataField="股票號碼" HeaderText="股票號碼" ReadOnly="True"
                                                            SortExpression="股票號碼" />
                                                        <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
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
                                                    ConnectionString="<%$ ConnectionStrings:SQLDB%>"
                                                    DeleteCommand="DELETE FROM [Own] WHERE [帳號] = @帳號 AND [股票號碼] = @股票號碼"
                                                    InsertCommand="INSERT INTO [Own] ([帳號], [股票號碼], [數量]) VALUES (@帳號, @股票號碼, @數量)"
                                                    SelectCommand="SELECT * FROM [Own]"
                                                    UpdateCommand="UPDATE [Own] SET [數量] = @數量 WHERE [帳號] = @帳號 AND [股票號碼] = @股票號碼">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="帳號" Type="String" />
                                                        <asp:Parameter Name="股票號碼" Type="String" />
                                                    </DeleteParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="數量" Type="Double" />
                                                        <asp:Parameter Name="帳號" Type="String" />
                                                        <asp:Parameter Name="股票號碼" Type="String" />
                                                    </UpdateParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="帳號" Type="String" />
                                                        <asp:Parameter Name="股票號碼" Type="String" />
                                                        <asp:Parameter Name="數量" Type="Double" />
                                                    </InsertParameters>
                                                </asp:SqlDataSource>--%>
                                            </div>
                                        </div>
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
                        <p class="footer__copy" style="font-family: 'Microsoft JhengHei'">
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
