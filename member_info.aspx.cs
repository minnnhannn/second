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
    public partial class member_info : System.Web.UI.Page
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
                float TotalValue = 0;
                float money = 0;
                String t1 = "1545";
                String t2 = DateTime.Now.ToString("HHmm");
                //Debug.WriteLine(string.Compare(t1, t2) );  若>0 前面比較大  =0 一樣大  <0 後面比較大
                if (string.Compare(t1, t2) >= 0)
                {  //現在時間還不到15:45
                    Session["Date"] = DateTime.Now.AddDays(-1).ToString("yyyy/MM/dd");
                }
                else
                {
                    Session["Date"] = DateTime.Now.ToString("yyyy/MM/dd");


                    try
                    {

                        //查股價 計算出股票價值           
                        SqlDataAdapter adapter2 = new SqlDataAdapter();
                        string cs2 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
                        string qs2 = "SELECT SUM(Stock.Closing_P*1000*Own.Amount) AS 'StockValue',SUM(Stock.Closing_P*1000*Own.Amount)+[MemberMaster].Balance AS 'AccValue'  FROM [MemberMaster],Stock,Own WHERE (Stock.DateTime=@DateTime) AND (Own.Stock_Id=Stock.Stock_Id) AND ([MemberMaster].Account=Own.Account) AND (Own.Account=@Account) group by [MemberMaster].Balance ";
                        using (SqlConnection cn2 = new SqlConnection(cs2))
                        {
                            cn2.Open();
                            using (SqlCommand command2 = new SqlCommand(qs2, cn2))
                            {
                                command2.Parameters.AddWithValue("@Account", Session["StuID"]);
                                command2.Parameters.AddWithValue("@DateTime", Session["Date"]);

                                DataSet dataset2 = new DataSet();
                                adapter2.SelectCommand = command2;
                                adapter2.Fill(dataset2);
                                if (dataset2.Tables[0].Rows.Count != 0)
                                {
                                    TotalValue = (float)Convert.ToDouble(dataset2.Tables[0].Rows[0][0]);  //股票總價值
                                }

                                //查餘額            
                                SqlDataAdapter adapter3 = new SqlDataAdapter();
                                string cs3 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
                                string qs3 = "SELECT [MemberMaster].Balance FROM [MemberMaster] WHERE ([MemberMaster].Account=@Account) ";
                                string sAccountValue = string.Empty;
                                using (SqlConnection cn3 = new SqlConnection(cs3))
                                {
                                    cn3.Open();
                                    using (SqlCommand command3 = new SqlCommand(qs3, cn3))
                                    {
                                        command3.Parameters.AddWithValue("@Account", Session["StuID"]);

                                        DataSet dataset3 = new DataSet();
                                        adapter3.SelectCommand = command3;
                                        adapter3.Fill(dataset3);
                                        money = (float)Convert.ToDouble(dataset3.Tables[0].Rows[0][0]);  //餘額
                                    }
                                    lStockValue.Text = Convert.ToString("$" + string.Format("{0:N0}", TotalValue));
                                    sAccountValue = Convert.ToString("$" + string.Format("{0:N0}", TotalValue + money));
                                    lAccountValue.Text = sAccountValue;
                                    Label1.Text = Convert.ToString("(以 " + Session["Date"] + " 的股價為參考計算)");

                                    cn3.Close();
                                }

                            }
                            cn2.Close();
                        }

                    }
                    catch (Exception ex)
                    {
                        Label2.ForeColor = System.Drawing.Color.Red;
                        Label2.Text = ex.Message;

                    }
                }
            }
        }
        private bool LogoutWasClicked = false;

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["StuName"] = "";
            lStuName.Text = "未登入";
            LogoutWasClicked = true;
            Response.Redirect("login.aspx");
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                Alert.Text = "";
                if (!tb_OldPass.Text.Equals("") && !tb_NewPass.Text.Equals("") && !tb_OldPass.Text.Equals(""))
                {
                    Regex regex = new Regex(@"^(?=.*\W)");   //  判斷 有特殊符號
                    if (regex.IsMatch(tb_OldPass.Text) || regex.IsMatch(tb_NewPass.Text) || regex.IsMatch(tb_NewPassAgain.Text))
                    {
                        Alert.Text = "不能有特殊符號";
                    }
                    else
                    {
                        SqlDataAdapter adapter = new SqlDataAdapter();
                        //連資料庫 抓資料 查舊密碼對不對
                        string cs = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
                        string qs = "SELECT PassWord FROM [MemberMaster] WHERE (Account=@Account)";
                        //1.引用SqlConnection物件連接資料庫
                        using (System.Data.SqlClient.SqlConnection cn = new SqlConnection(cs))
                        {
                            //開啟資料庫
                            cn.Open();
                            //引用SqlCommand物件
                            using (SqlCommand command = new SqlCommand(qs, cn))
                            {
                                command.Parameters.AddWithValue("@Account", Session["StuID"]);

                                DataSet dataset = new DataSet();
                                adapter.SelectCommand = command;
                                adapter.Fill(dataset);
                                //判斷資料列是否為空
                                if (dataset.Tables[0].Rows[0][0].Equals(tb_OldPass.Text))  //不為空  舊密碼輸入正確
                                {
                                    if (tb_NewPass.Text != tb_NewPassAgain.Text)   //判斷兩次新密碼是否相同
                                    {
                                        Alert.Text = "新密碼不一致";
                                    }
                                    else
                                    {
                                        //連資料庫 更新新密碼
                                        DataView dv = (DataView)SqlDataSource4.Select(DataSourceSelectArguments.Empty);
                                        //將前端SQL語法引用到後端
                                        Response.Write("<script>alert('密碼更新成功');location.href='about.aspx'; </script>");

                                    }
                                }
                                else
                                {
                                    Alert.Text = "舊密碼輸入錯誤";
                                }
                            }
                            cn.Close();
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Alert.Text = ex.Message;
            }
        }
    }
}