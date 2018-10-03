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
    public partial class recheck_transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string StuNameShow = string.Empty;
            string Capacity = string.Empty;
            //StuNameShow = Session["StuName"].ToString(); //DB連線才用
            //Capacity = Session["Capacity"].ToString(); //DB連線才用
            StuNameShow = "曾敏涵"; //先固定塞值
            Capacity = "Member"; //先固定塞值
            lStuName.Text = StuNameShow;

            if (StuNameShow == "" || Capacity == "Manager")
            {
                Response.Write("<script>alert('非一般會員，請先登入!');location.href='login.aspx'; </script>");
            }
            else
            {
                try
                {
                    //查股票名稱 收盤 餘額
                    SqlDataAdapter adapter1 = new SqlDataAdapter();
                    string cs1 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
                    string qs1 = "SELECT Stock.收盤, [User].餘額,Stock.名稱 FROM [User] CROSS JOIN Stock WHERE ([User].帳號=@帳號) AND (Stock.代號=@代號)AND (Stock.時間=@時間)";
                    using (SqlConnection cn1 = new SqlConnection(cs1))
                    {
                        cn1.Open();
                        using (SqlCommand command1 = new SqlCommand(qs1, cn1))
                        {
                            command1.Parameters.AddWithValue("@帳號", Session["StuName"]);
                            command1.Parameters.AddWithValue("@代號", Session["stock"]);


                            String t1 = "1545";
                            String t2 = DateTime.Now.ToString("HHmm");
                            //  Debug.WriteLine(string.Compare(t1, t2) );  若>0 前面比較大  =0 一樣大  <0 後面比較大
                            if (string.Compare(t1, t2) >= 0)
                            {  //現在時間還不到15:45
                                command1.Parameters.AddWithValue("@時間", DateTime.Now.AddDays(-1).ToString("yyyy/MM/dd"));
                                Session["Date"] = DateTime.Now.AddDays(-1).ToString("yyyy/MM/dd");
                            }   //用昨天的股價
                            else
                            {
                                command1.Parameters.AddWithValue("@時間", DateTime.Now.ToString("yyyy/MM/dd"));
                                Session["Date"] = DateTime.Now.ToString("yyyy/MM/dd");
                            }   //用今天的股價

                            using (SqlDataReader dr = command1.ExecuteReader())
                            {
                                while ((dr.Read()))
                                {
                                    //5.判斷資料列是否為空
                                    if (!dr[0].Equals(DBNull.Value))
                                    {


                                        string temp = dr[0].ToString().Trim();  //把收盤放進temp
                                        float price = Convert.ToSingle(temp);    //變成floar型態                                        

                                        temp = dr[1].ToString().Trim();  //把餘額放進temp
                                        float Money = Convert.ToSingle(temp);

                                        temp = dr[2].ToString().Trim();  //把股票名稱放進temp
                                        string Name = Convert.ToString(temp);


                                        lStockName.Text = Name;    //股票名稱
                                        lBalance.Text = Money.ToString();     //餘額
                                        lCloseP.Text = price.ToString();   //收盤價        
                                    }
                                }

                                cn1.Close();
                            }
                        }

                    }

                }
                catch (Exception ex)
                {
                    lTransationFail.ForeColor = System.Drawing.Color.Red;
                    lTransationFail.Text = ex.Message;
                }

                try
                {
                    lStockCode.Text = Session["stock"].ToString();     //股票代碼
                    lStockPrice.Text = Session["price"].ToString();     //出價
                    lStockBoardLot.Text = Session["amount"].ToString();    //數量
                    lAction.Text = Session["action"].ToString();  //買賣
                    lClosePT.Text = Session["Date"].ToString();    //Date
                }
                catch (Exception ex)
                {
                    lTransationFail.ForeColor = System.Drawing.Color.Red;
                    lTransationFail.Text = ex.Message;

                    Response.Write("<script>alert('請勿按返回至 前次檢查頁面!');location.href='transaction.aspx'; </script>");
                }
            }



        }
        private bool LogoutWasClicked = false;

        protected void Logout_Click(object sender, EventArgs e)
        {
            //Session["StuName"] = "";
            Session.Remove("StuName");
            lStuName.Text = "";
            LogoutWasClicked = true;
            Response.Write("<script>alert('已登出，請重新登入!');location.href='login.aspx'; </script>");
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            Session["time"] = DateTime.Now.ToString("yyyy/MM/dd tt hh:mm:ss");
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);  //新增至 未成功紀錄                              

            Session.Remove("stock");
            Session.Remove("price");
            Session.Remove("amount");
            Session.Remove("action");

            Response.Write("<script>alert('已成功下單，可至RECORD查看!');location.href='transaction.aspx'; </script>");

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Session.Remove("stock");
            Session.Remove("price");
            Session.Remove("amount");
            Session.Remove("action");

            Response.Write("<script>alert('已取消交易');location.href='transaction.aspx'; </script>");
        }

    }
}