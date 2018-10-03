using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;


namespace trading2018
{
    public partial class transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string StuNameShow = string.Empty;
            string Capacity = string.Empty;
            StuNameShow = Session["StuName"].ToString(); //DB連線才用
            Capacity = Session["Capacity"].ToString(); //DB連線才用
            //StuNameShow = "曾敏涵"; //先固定塞值
            //Capacity = "Member"; //先固定塞值
            lStuName.Text = StuNameShow;

            if (StuNameShow == "" || Capacity == "Manager")
            {
                Response.Write("<script>alert('非一般會員，請先登入!');location.href='login.aspx'; </script>");
            }
            else
            {
                ////可用餘額
                //float money = 0;
                //SqlDataAdapter adapter3 = new SqlDataAdapter();
                //string cs3 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
                //string qs3 = "SELECT [User].餘額 FROM [User] WHERE ([User].帳號=@帳號) ";
                //string sAccountValue = string.Empty;
                //using (SqlConnection cn3 = new SqlConnection(cs3))
                //{
                //    cn3.Open();
                //    using (SqlCommand command3 = new SqlCommand(qs3, cn3))
                //    {
                //        command3.Parameters.AddWithValue("@帳號", Session["ID"]);

                //        DataSet dataset3 = new DataSet();
                //        adapter3.SelectCommand = command3;
                //        adapter3.Fill(dataset3);
                //        money = (float)Convert.ToDouble(dataset3.Tables[0].Rows[0][0]);  //餘額
                //    }
                //    lbalance.Text = money.ToString();
                //    cn3.Close();
                //}
            }
        }
        private bool LogoutWasClicked = false;

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["StuName"] = "";
            Session["Capacity"] = "";
            lStuName.Text = "未登入";
            LogoutWasClicked = true;
            Response.Redirect("login.aspx");
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            String sStockCode = this.StockCode.Text;
            String sStockPrice = this.StockPrice.Text;
            String sStockBoardLot = this.StockBoardLot.Text;

            //if (!sStockCode.Equals("") && !sStockPrice.Equals("") && !sStockBoardLot.Equals(""))  //判斷有無未填值 (如果都有填)
            //{

            //    Regex regex = new Regex(@"^(?!.*[a-z])(?!.*[A-Z]]).{1,7}$");  //不能有字母 長度1~7
            //    Regex regex2 = new Regex(@"^(?!.*\W).{2,10}$");  //不能有特殊符號 長度2~10
            //    if (regex.IsMatch(StockPrice.Text))
            //    {
            //        if (regex2.IsMatch(StockCode.Text))
            //        {
            //            try
            //            {
            //                Int32.Parse(StockBoardLot.Text);

            //                //判斷使用者輸入 有沒有這項股票存在  
            //                SqlDataAdapter adapter2 = new SqlDataAdapter();
            //                string cs2 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //                string qs2 = "SELECT Stock_Name FROM [Stock] WHERE (Stock_Id=@Stock_Id)";
            //                using (SqlConnection cn2 = new SqlConnection(cs2))
            //                {
            //                    cn2.Open();
            //                    using (SqlCommand command2 = new SqlCommand(qs2, cn2))
            //                    {
            //                        command2.Parameters.AddWithValue("@Stock_Id", StockCode.Text);

            //                        DataSet dataset2 = new DataSet();
            //                        adapter2.SelectCommand = command2;
            //                        adapter2.Fill(dataset2);

            //                        if (dataset2.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值) 有這項股票
            //                        {
            //                            lStockCode.Text = Convert.ToString(dataset2.Tables[0].Rows[0][0]);

            //                            try
            //                            {
            //                                Session["time"] = DateTime.Now.ToString("yyyy/MM/dd tt hh:mm:ss");

            //                                Alert.ForeColor = System.Drawing.Color.Blue;

            //                                //連資料庫 抓資料 
            //                                string cs = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage";
            //                                //string qs = "SELECT myregion,myname FROM mytable;";
            //                                string qs = "SELECT Stock.Closing_Price, [Member_Master].Balance,Stock.Stock_Name FROM [Member_Master] CROSS JOIN Stock WHERE ([Member_Master].Account=@Account) AND (Stock.Stock_Id=@Stock_Id)AND (Stock.DateTime=@DateTime)";
            //                                //1.引用SqlConnection物件連接資料庫
            //                                using (SqlConnection cn = new SqlConnection(cs))
            //                                {
            //                                    //2.開啟資料庫
            //                                    cn.Open();
            //                                    //3.引用SqlCommand物件
            //                                    using (SqlCommand command = new SqlCommand(qs, cn))
            //                                    {
            //                                        command.Parameters.AddWithValue("@Stock_Code", StockCode.Text);
            //                                        command.Parameters.AddWithValue("@Account", Session["StuID"]);

            //                                        String t1 = "1545";
            //                                        String t2 = DateTime.Now.ToString("HHmm");
            //                                        //  Debug.WriteLine(string.Compare(t1, t2) );  若>0 前面比較大  =0 一樣大  <0 後面比較大
            //                                        if (string.Compare(t1, t2) >= 0)
            //                                        {  //現在時間還不到15:45          
            //                                            command.Parameters.AddWithValue("@DateTime", DateTime.Now.AddDays(-1).ToString("yyyy/MM/dd"));
            //                                            Session["Date"] = DateTime.Now.AddDays(-1).ToString("yyyy/MM/dd");
            //                                        }   //用昨天的股價
            //                                        else
            //                                        {
            //                                            command.Parameters.AddWithValue("@DateTime", DateTime.Now.ToString("yyyy/MM/dd"));
            //                                            Session["Date"] = DateTime.Now.ToString("yyyy/MM/dd");
            //                                        }   //用今天的股價


            //                                        //4.搭配SqlCommand物件使用SqlDataReader
            //                                        using (SqlDataReader dr = command.ExecuteReader())
            //                                        {
            //                                            while ((dr.Read()))
            //                                            {
            //                                                //5.判斷資料列是否為空
            //                                                if (!dr[0].Equals(DBNull.Value))
            //                                                {

            //                                                }
            //                                                string temp = dr[0].ToString().Trim();  //把收盤放進temp
            //                                                float price = Convert.ToSingle(temp);    //變成floar型態

            //                                                temp = StockPrice.Text;   //把出價放進temp
            //                                                float buy = Convert.ToSingle(temp);

            //                                                temp = StockBoardLot.Text;   //把買賣數量放進temp
            //                                                float amount = Convert.ToSingle(temp);

            //                                                string Do = RadioButtonList1.SelectedItem.Value;   //把買或賣存進Do     

            //                                                temp = dr[1].ToString().Trim();  //把餘額放進temp
            //                                                float NewMoney = Convert.ToSingle(temp);

            //                                                temp = dr[2].ToString().Trim();  //把股票名稱放進temp
            //                                                string Name = Convert.ToString(temp);


            //                                                if (Equals(Do, "Buy"))                 //判斷買賣
            //                                                {
            //                                                    Session["stock"] = StockCode.Text;
            //                                                    Session["price"] = StockPrice.Text;
            //                                                    Session["amount"] = StockBoardLot.Text;
            //                                                    Session["action"] = RadioButtonList1.SelectedItem.Value;

            //                                                    string Transport;
            //                                                    Transport = "recheck_transaction.aspx";
            //                                                    //?stock=" + TextBox1.Text + "&price=" + TextBox2.Text + "&amount=" + TextBox3.Text + "&BuyorSell=" + Server.UrlEncode(RadioButtonList1.SelectedItem.Value) + "&Name=" + dr[2].ToString().Trim() + "&Money=" + dr[1].ToString().Trim() + "&Take=" + dr[0].ToString().Trim() + "&TM=" + Session["Date"];
            //                                                    Response.Redirect(Transport);


            //                                                    /*  後來取消下單限制 所以不要
            //                                                    NewMoney = NewMoney - buy * 1000 * amount;
            //                                                    if (NewMoney >= 0)  //餘額夠買
            //                                                    {
            //                                                        //傳值去Transaction2
            //                                                        string Transport;
            //                                                        Transport = "Transaction2.aspx?stock=" + TextBox1.Text + "&price=" + TextBox2.Text + "&amount=" + TextBox3.Text + "&BuyorSell=" + Server.UrlEncode(RadioButtonList1.SelectedItem.Value) + "&Name=" + dr[2].ToString().Trim() + "&Money=" + dr[1].ToString().Trim() + "&Take=" + dr[0].ToString().Trim() + "&TM=" + Session["Date"];
            //                                                        Response.Redirect(Transport);

            //                                                    else if (NewMoney < 0)  //餘額不夠買
            //                                                    {
            //                                                        Label3.Text = "帳戶餘額不足以購買 請重新下單";
            //                                                    }
            //                                                    */
            //                                                }
            //                                                else if (Equals(Do, "Sold"))
            //                                                {

            //                                                    float Own = 0;


            //                                                    //查有沒有擁有這項股票  
            //                                                    SqlDataAdapter adapter1 = new SqlDataAdapter();
            //                                                    string cs1 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //                                                    string qs1 = "SELECT Amount FROM [Own] WHERE (Account=@Account) AND (Stock_Id=@Stock_Id)";
            //                                                    using (SqlConnection cn1 = new SqlConnection(cs1))
            //                                                    {
            //                                                        cn1.Open();
            //                                                        using (SqlCommand command1 = new SqlCommand(qs1, cn1))
            //                                                        {
            //                                                            command1.Parameters.AddWithValue("@Account", Session["ID"]);
            //                                                            command1.Parameters.AddWithValue("@Stock_Id", StockCode.Text);

            //                                                            DataSet dataset = new DataSet();
            //                                                            adapter1.SelectCommand = command1;
            //                                                            adapter1.Fill(dataset);

            //                                                            if (dataset.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值且夠數量  (有值 才能賣)
            //                                                            {
            //                                                                Own = (float)Convert.ToDouble(dataset.Tables[0].Rows[0][0]);   //這項股票所擁有的數量
            //                                                                Own = Own - amount;
            //                                                                if (Own >= 0)
            //                                                                {
            //                                                                    //傳值去Transaction2
            //                                                                    Session["stock"] = StockCode.Text;
            //                                                                    Session["price"] = StockPrice.Text;
            //                                                                    Session["amount"] = StockBoardLot.Text;
            //                                                                    Session["BuyorSell"] = RadioButtonList1.SelectedItem.Value;

            //                                                                    string Transport;
            //                                                                    Transport = "recheck_transaction.aspx";
            //                                                                    //?stock=" + TextBox1.Text + "&price=" + TextBox2.Text + "&amount=" + TextBox3.Text + "&BuyorSell=" + Server.UrlEncode(RadioButtonList1.SelectedItem.Value) + "&Name=" + dr[2].ToString().Trim() + "&Money=" + dr[1].ToString().Trim() + "&Take=" + dr[0].ToString().Trim() + "&TM=" + Session["Date"];
            //                                                                    Response.Redirect(Transport);

            //                                                                    //  DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);  //新增至 未成功紀錄                              
            //                                                                    //  Label3.Text = "已成功下單 可至交易紀錄觀看";
            //                                                                }
            //                                                                else if (Own < 0)
            //                                                                {
            //                                                                    lTransationFail.Text = "您股票不足數量 請重新輸入或調整數量";
            //                                                                }


            //                                                            }
            //                                                            else if (dataset.Tables[0].Rows.Count == 0)  //沒值 不能賣
            //                                                            {
            //                                                                lTransationFail.Text = "您沒有這支股票 不能賣出";
            //                                                            }
            //                                                        }

            //                                                        cn1.Close();
            //                                                    }

            //                                                }

            //                                            }
            //                                            dr.Close();      //關閉Reader
            //                                        }

            //                                    }
            //                                }
            //                            }
            //                            catch (Exception ex)
            //                            {
            //                                Alert.ForeColor = System.Drawing.Color.Red;
            //                                Alert.Text = ex.Message;

            //                            }



            //                        }
            //                        else if (dataset2.Tables[0].Rows.Count == 0)  //沒值 
            //                        {
            //                            StockCodeWarn.ForeColor = System.Drawing.Color.Red;
            //                            StockCodeWarn.Text = "查無此股票";
            //                        }
            //                    }

            //                    cn2.Close();
            //                }

            //            }
            //            catch
            //            {
            //                Alert.ForeColor = System.Drawing.Color.Red;
            //                Alert.Text = "只能輸入數字";
            //            }

            //        }
            //        else
            //        {
            //            StockCodeWarn.ForeColor = System.Drawing.Color.Red;
            //            StockCodeWarn.Text = "股票代碼輸入錯誤";
            //        }


            //    }
            //    else
            //    {
            //        StockPriceWarn.ForeColor = System.Drawing.Color.Red;
            //        StockPriceWarn.Text = "價位輸入錯誤";
            //    }
            //}
            //else  //都有填值
            //{
            //    lTransationFail.ForeColor = System.Drawing.Color.Red;
            //    lTransationFail.Text = "有項目未填";
            //}
        }
    }
}