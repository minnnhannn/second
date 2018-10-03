<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager_record.aspx.cs" Inherits="trading2018.manager_record" %>

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
                                    <li class="current-menu-item"><a href="#record">RECORD</a>
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
                <section class="md-section bg-gray" id="record">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-8">

                                <!-- title -->
                                <div class="title">
                                    <h2 class="title__title">Record</h2>
                                </div>
                                <!-- End / title -->

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 ">

                                <!--  -->
                                <div>
                                    <div class="post__body" id="id-1">
                                        <h2 class="post__title" style="font-family: 'Microsoft JhengHei'"><a href="#id-1">尚未執行的紀錄</a></h2>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        <%--                                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True"
                                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="帳號,下單時間"
                                            DataSourceID="SqlDataSource2" PageSize="20" BackColor="#CCCCCC"
                                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                                            CellSpacing="2" ForeColor="Black">
                                            <Columns>
                                                <asp:TemplateField ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                            CommandName="Update" Text="更新"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Cancel" Text="取消" OnClientClick="return confirm('確認要取消嗎？');"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                            CommandName="Edit" Text="編輯"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認要刪除嗎？');"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="帳號" HeaderText="帳號" ReadOnly="True"
                                                    SortExpression="帳號" />
                                                <asp:BoundField DataField="股票號碼" HeaderText="股票號碼" SortExpression="股票號碼" />
                                                <asp:BoundField DataField="價格" HeaderText="價格" SortExpression="價格" />
                                                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                                <asp:BoundField DataField="買賣" HeaderText="買賣" SortExpression="買賣" />
                                                <asp:BoundField DataField="下單時間" HeaderText="下單時間" ReadOnly="True"
                                                    SortExpression="下單時間" />
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
                                            DeleteCommand="DELETE FROM [UnsuccessfulRecord] WHERE [帳號] = @帳號 AND [下單時間] = @下單時間"
                                            InsertCommand="INSERT INTO [UnsuccessfulRecord] ([帳號], [股票號碼], [價格], [數量], [買賣], [下單時間]) VALUES (@帳號, @股票號碼, @價格, @數量, @買賣, @下單時間)"
                                            SelectCommand="SELECT * FROM [UnsuccessfulRecord] ORDER BY [下單時間] DESC"
                                            UpdateCommand="UPDATE [UnsuccessfulRecord] SET [股票號碼] = @股票號碼, [價格] = @價格, [數量] = @數量, [買賣] = @買賣 WHERE [帳號] = @帳號 AND [下單時間] = @下單時間">
                                            <DeleteParameters>
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                            </DeleteParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="股票號碼" Type="String" />
                                                <asp:Parameter Name="價格" Type="Double" />
                                                <asp:Parameter Name="數量" Type="Double" />
                                                <asp:Parameter Name="買賣" Type="String" />
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                            </UpdateParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="股票號碼" Type="String" />
                                                <asp:Parameter Name="價格" Type="Double" />
                                                <asp:Parameter Name="數量" Type="Double" />
                                                <asp:Parameter Name="買賣" Type="String" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                            </InsertParameters>
                                        </asp:SqlDataSource>--%>
                                    </div>
                                </div>
                                <!-- End /  -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-8 ">

                                <!--  -->
                                <div>
                                    <div class="post__body" id="id-2">
                                        <h2 class="post__title" style="font-family: 'Microsoft JhengHei'"><a href="#id-2">成功的紀錄</a></h2>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="帳號,下單時間"
                                            DataSourceID="SqlDataSource1" PageSize="20" BackColor="White"
                                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"
                                            ForeColor="Black" GridLines="Vertical">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:TemplateField ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                            CommandName="Update" Text="更新"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Cancel" Text="取消" OnClientClick="return confirm('確認要取消嗎？');"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                            CommandName="Edit" Text="編輯"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認要刪除嗎？');"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="帳號" HeaderText="帳號" ReadOnly="True"
                                                    SortExpression="帳號" />
                                                <asp:BoundField DataField="股票號碼" HeaderText="股票號碼" SortExpression="股票號碼" />
                                                <asp:BoundField DataField="下單價格" HeaderText="下單價格" SortExpression="下單價格" />
                                                <asp:BoundField DataField="成交價格" HeaderText="成交價格" SortExpression="成交價格" />
                                                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                                <asp:BoundField DataField="買賣" HeaderText="買賣"
                                                    SortExpression="買賣" />
                                                <asp:BoundField DataField="交易前餘額" HeaderText="交易前餘額" SortExpression="交易前餘額" />
                                                <asp:BoundField DataField="交易金額" HeaderText="交易金額" SortExpression="交易金額" />
                                                <asp:BoundField DataField="手續費" HeaderText="手續費" SortExpression="手續費" />
                                                <asp:BoundField DataField="證交稅" HeaderText="證交稅" SortExpression="證交稅" />
                                                <asp:BoundField DataField="交易後餘額" HeaderText="交易後餘額" SortExpression="交易後餘額" />
                                                <asp:BoundField DataField="下單時間" HeaderText="下單時間" ReadOnly="True"
                                                    SortExpression="下單時間" />
                                                <asp:BoundField DataField="處理時間" HeaderText="處理時間" SortExpression="處理時間" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>

                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                            ConnectionString="<%$ ConnectionStrings:SQLDB %>"
                                            DeleteCommand="DELETE FROM [Record] WHERE [帳號] = @帳號 AND [下單時間] = @下單時間"
                                            InsertCommand="INSERT INTO [Record] ([帳號], [股票號碼], [下單價格], [成交價格], [數量], [買賣], [交易前餘額], [交易金額], [手續費], [證交稅], [交易後餘額], [下單時間], [處理時間]) VALUES (@帳號, @股票號碼, @下單價格, @成交價格, @數量, @買賣, @交易前餘額, @交易金額, @手續費, @證交稅, @交易後餘額, @下單時間, @處理時間)"
                                            SelectCommand="SELECT * FROM [Record] ORDER BY [下單時間] DESC"
                                            UpdateCommand="UPDATE [Record] SET [股票號碼] = @股票號碼, [下單價格] = @下單價格, [成交價格] = @成交價格, [數量] = @數量, [買賣] = @買賣, [交易前餘額] = @交易前餘額, [交易金額] = @交易金額, [手續費] = @手續費, [證交稅] = @證交稅, [交易後餘額] = @交易後餘額, [處理時間] = @處理時間 WHERE [帳號] = @帳號 AND [下單時間] = @下單時間">
                                            <DeleteParameters>
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                            </DeleteParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="股票號碼" Type="String" />
                                                <asp:Parameter Name="下單價格" Type="Double" />
                                                <asp:Parameter Name="成交價格" Type="Double" />
                                                <asp:Parameter Name="數量" Type="Double" />
                                                <asp:Parameter Name="買賣" Type="String" />
                                                <asp:Parameter Name="交易前餘額" Type="Double" />
                                                <asp:Parameter Name="交易金額" Type="Double" />
                                                <asp:Parameter Name="手續費" Type="Double" />
                                                <asp:Parameter Name="證交稅" Type="Double" />
                                                <asp:Parameter Name="交易後餘額" Type="Double" />
                                                <asp:Parameter Name="處理時間" Type="String" />
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                            </UpdateParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="股票號碼" Type="String" />
                                                <asp:Parameter Name="下單價格" Type="Double" />
                                                <asp:Parameter Name="成交價格" Type="Double" />
                                                <asp:Parameter Name="數量" Type="Double" />
                                                <asp:Parameter Name="買賣" Type="String" />
                                                <asp:Parameter Name="交易前餘額" Type="Double" />
                                                <asp:Parameter Name="交易金額" Type="Double" />
                                                <asp:Parameter Name="手續費" Type="Double" />
                                                <asp:Parameter Name="證交稅" Type="Double" />
                                                <asp:Parameter Name="交易後餘額" Type="Double" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                                <asp:Parameter Name="處理時間" Type="String" />
                                            </InsertParameters>
                                        </asp:SqlDataSource>--%>
                                    </div>
                                </div>
                                <!-- End /  -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-8 ">

                                <!--  -->
                                <div>
                                    <div class="post__body" id="id-3">
                                        <h2 class="post__title" style="font-family: 'Microsoft JhengHei'"><a href="#id-3">失敗的紀錄</a></h2>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
                                        TEST</br>
<%--                                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True"
                                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="帳號,下單時間"
                                            DataSourceID="SqlDataSource3" BackColor="#CCCCCC" BorderColor="#999999"
                                            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                                            ForeColor="Black">
                                            <Columns>
                                                <asp:TemplateField ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                            CommandName="Update" Text="更新"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Cancel" Text="取消" OnClientClick="return confirm('確認要取消嗎？');"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                            CommandName="Edit" Text="編輯"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                            CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認要刪除嗎？');"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="帳號" HeaderText="帳號" ReadOnly="True"
                                                    SortExpression="帳號" />
                                                <asp:BoundField DataField="股票號碼" HeaderText="股票號碼" SortExpression="股票號碼" />
                                                <asp:BoundField DataField="下單價格" HeaderText="下單價格" SortExpression="下單價格" />
                                                <asp:BoundField DataField="當日股價" HeaderText="當日股價" SortExpression="當日股價" />
                                                <asp:BoundField DataField="數量" HeaderText="數量" SortExpression="數量" />
                                                <asp:BoundField DataField="買賣" HeaderText="買賣"
                                                    SortExpression="買賣" />
                                                <asp:BoundField DataField="交易前餘額" HeaderText="交易前餘額" SortExpression="交易前餘額" />
                                                <asp:BoundField DataField="下單時間" HeaderText="下單時間" SortExpression="下單時間"
                                                    ReadOnly="True" />
                                                <asp:BoundField DataField="處理時間" HeaderText="處理時間" SortExpression="處理時間" />
                                                <asp:BoundField DataField="備註" HeaderText="備註" SortExpression="備註" />
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
                                            DeleteCommand="DELETE FROM [FailRecord] WHERE [帳號] = @帳號 AND [下單時間] = @下單時間"
                                            InsertCommand="INSERT INTO [FailRecord] ([帳號], [股票號碼], [下單價格], [當日股價], [數量], [買賣], [交易前餘額], [下單時間], [處理時間], [備註]) VALUES (@帳號, @股票號碼, @下單價格, @當日股價, @數量, @買賣, @交易前餘額, @下單時間, @處理時間, @備註)"
                                            SelectCommand="SELECT * FROM [FailRecord] ORDER BY [下單時間] DESC"
                                            UpdateCommand="UPDATE [FailRecord] SET [股票號碼] = @股票號碼, [下單價格] = @下單價格, [當日股價] = @當日股價, [數量] = @數量, [買賣] = @買賣, [交易前餘額] = @交易前餘額, [處理時間] = @處理時間, [備註] = @備註 WHERE [帳號] = @帳號 AND [下單時間] = @下單時間">
                                            <DeleteParameters>
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                            </DeleteParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="股票號碼" Type="String" />
                                                <asp:Parameter Name="下單價格" Type="Double" />
                                                <asp:Parameter Name="當日股價" Type="Double" />
                                                <asp:Parameter Name="數量" Type="Double" />
                                                <asp:Parameter Name="買賣" Type="String" />
                                                <asp:Parameter Name="交易前餘額" Type="Double" />
                                                <asp:Parameter Name="處理時間" Type="String" />
                                                <asp:Parameter Name="備註" Type="String" />
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                            </UpdateParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="帳號" Type="String" />
                                                <asp:Parameter Name="股票號碼" Type="String" />
                                                <asp:Parameter Name="下單價格" Type="Double" />
                                                <asp:Parameter Name="當日股價" Type="Double" />
                                                <asp:Parameter Name="數量" Type="Double" />
                                                <asp:Parameter Name="買賣" Type="String" />
                                                <asp:Parameter Name="交易前餘額" Type="Double" />
                                                <asp:Parameter Name="下單時間" Type="String" />
                                                <asp:Parameter Name="處理時間" Type="String" />
                                                <asp:Parameter Name="備註" Type="String" />
                                            </InsertParameters>
                                        </asp:SqlDataSource>--%>
                                    </div>
                                </div>
                                <!-- End /  -->
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
