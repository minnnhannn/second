using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace trading2018
{
    public partial class manager_main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string StuNameShow = string.Empty;
            string Capacity = string.Empty;
            //StuNameShow = Session["StuName"].ToString(); //DB連線才用
            //Capacity = Session["Capacity"].ToString(); //DB連線才用
            StuNameShow = "曾敏涵"; //先固定塞值
            Capacity = "Manager"; //先固定塞值
            lStuName.Text = StuNameShow;

            if (StuNameShow == "" || Capacity == "Member")
            {
                Response.Write("<script>alert('沒有管理員權限，請先登入!');location.href='login.aspx'; </script>");
            }
            //else
            //{
            //    String t1 = "1545";
            //    String t2 = DateTime.Now.ToString("HHmm");      // H 24小時制  h 12小時
            //    //  Debug.WriteLine(string.Compare(t1, t2) );  若>0 前面比較大  =0 一樣大  <0 後面比較大
            //    if (string.Compare(t1, t2) >= 0)
            //    {  //現在時間還不到15:45
            //        Session["Date"] = DateTime.Now.AddDays(-1).ToString("yyyy/MM/dd");
            //    }
            //    else
            //    {
            //        Session["Date"] = DateTime.Now.ToString("yyyy/MM/dd");
            //    }

            //    //   Check(null,null);
            //    //抓資料 計算排名
            //    SqlDataAdapter adapter1 = new SqlDataAdapter();
            //    string cs1 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //    string qs1 = "SELECT distinct TOP 10 [User].帳號,[User].姓名,CASE WHEN NOT EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) Then [User].餘額 WHEN EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) THEN SUM(Stock.收盤*1000*Own.數量)+[User].餘額 END AS'帳戶總價值' FROM [User],Stock,Own  WHERE  ([User].身份=@身份) AND (Stock.時間=@時間) AND (Own.股票號碼=Stock.代號) AND [User].帳號=(case when EXISTS(select [User].姓名 FROM Own WHERE [User].帳號=Own.帳號) then (Own.帳號) else ([User].帳號) end ) group by [User].姓名,[User].餘額,[User].帳號,[OWN].帳號 Order by 帳戶總價值 DESC";
            //    using (SqlConnection cn1 = new SqlConnection(cs1))
            //    {
            //        cn1.Open();
            //        using (SqlCommand command1 = new SqlCommand(qs1, cn1))
            //        {
            //            command1.Parameters.AddWithValue("@時間", Session["Date"]);
            //            command1.Parameters.AddWithValue("@身份", "使用者");
            //            DataSet dataset = new DataSet();
            //            adapter1.SelectCommand = command1;
            //            adapter1.Fill(dataset);

            //            if (dataset.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值)
            //            {
            //                int i = 0;
            //                while (i < 10)
            //                {   //做十次 前十名
            //                    //insert到RANK資料表
            //                    SqlDataAdapter adapter2 = new SqlDataAdapter();
            //                    string cs2 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //                    string qs2 = "UPDATE Rank SET 帳號 = @帳號,姓名=@姓名,帳戶總價值=@帳戶總價值 WHERE (排名=@排名) ";
            //                    using (SqlConnection cn2 = new SqlConnection(cs2))
            //                    {
            //                        cn2.Open();
            //                        using (SqlCommand command2 = new SqlCommand(qs2, cn2))
            //                        {
            //                            command2.Parameters.AddWithValue("@帳號", Convert.ToString(dataset.Tables[0].Rows[i][0]));
            //                            command2.Parameters.AddWithValue("@姓名", Convert.ToString(dataset.Tables[0].Rows[i][1]));
            //                            command2.Parameters.AddWithValue("@帳戶總價值", (float)Convert.ToDouble(dataset.Tables[0].Rows[i][2]));
            //                            command2.Parameters.AddWithValue("@排名", i + 1);
            //                            command2.ExecuteNonQuery();
            //                        }
            //                        cn2.Close();
            //                    }
            //                    i++;
            //                }

            //            }
            //        }
            //        cn1.Close();
            //    }
            //    DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            //    //團體排名
            //    SqlDataAdapter adapter00 = new SqlDataAdapter();
            //    string cs00 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //    string qs00 = "SELECT distinct TOP 10 [User].帳號,[User].姓名,CASE WHEN NOT EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) Then [User].餘額 WHEN EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) THEN SUM(Stock.收盤*1000*Own.數量)+[User].餘額 END AS'帳戶總價值' FROM [User],Stock,Own  WHERE  ([User].身份=@身份) AND (Stock.時間=@時間) AND (Own.股票號碼=Stock.代號) AND [User].帳號=(case when EXISTS(select [User].姓名 FROM Own WHERE [User].帳號=Own.帳號) then (Own.帳號) else ([User].帳號) end ) group by [User].姓名,[User].餘額,[User].帳號,[OWN].帳號 Order by 帳戶總價值 DESC";
            //    using (SqlConnection cn00 = new SqlConnection(cs00))
            //    {
            //        cn00.Open();
            //        using (SqlCommand command1 = new SqlCommand(qs00, cn00))
            //        {
            //            command1.Parameters.AddWithValue("@時間", Session["Date"]);
            //            command1.Parameters.AddWithValue("@身份", "團體");
            //            DataSet dataset = new DataSet();
            //            adapter1.SelectCommand = command1;
            //            adapter1.Fill(dataset);

            //            if (dataset.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值)
            //            {
            //                //GRank沒值的話，則insert,有值則update
            //                SqlDataAdapter adapter11 = new SqlDataAdapter();
            //                string qs11 = "SELECT * From [GRank]";
            //                using (SqlCommand comm = new SqlCommand(qs11, cn00))
            //                {
            //                    DataSet ds = new DataSet();
            //                    adapter11.SelectCommand = comm;
            //                    adapter11.Fill(ds);
            //                    //insert
            //                    if (ds.Tables[0].Rows.Count == 0)
            //                    {
            //                        int i = 0;
            //                        while (i < 10)
            //                        {   //做十次 前十名
            //                            //insert到RANK資料表
            //                            SqlDataAdapter adapter2 = new SqlDataAdapter();
            //                            string cs2 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //                            string qs2 = "Insert Into GRank (排名,帳號,姓名,帳戶總價值) values(@排名,@帳號,@姓名,@帳戶總價值)";
            //                            using (SqlConnection cn2 = new SqlConnection(cs2))
            //                            {
            //                                cn2.Open();
            //                                using (SqlCommand command2 = new SqlCommand(qs2, cn2))
            //                                {
            //                                    command2.Parameters.AddWithValue("@排名", i + 1);
            //                                    command2.Parameters.AddWithValue("@帳號", Convert.ToString(dataset.Tables[0].Rows[i][0]));
            //                                    command2.Parameters.AddWithValue("@姓名", Convert.ToString(dataset.Tables[5].Rows[i][1]));
            //                                    command2.Parameters.AddWithValue("@帳戶總價值", (float)Convert.ToDouble(dataset.Tables[0].Rows[i][2]));
            //                                    command2.ExecuteNonQuery();
            //                                }
            //                                cn2.Close();
            //                            }
            //                            i++;
            //                        }
            //                    }
            //                    else //update
            //                    {
            //                        int i = 0;
            //                        while (i < 10)
            //                        {   //做十次 前十名
            //                            //insert到RANK資料表
            //                            SqlDataAdapter adapter2 = new SqlDataAdapter();
            //                            string cs2 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //                            string qs2 = "UPDATE GRank SET 帳號 = @帳號,姓名=@姓名,帳戶總價值=@帳戶總價值 WHERE (排名=@排名) ";
            //                            using (SqlConnection cn2 = new SqlConnection(cs2))
            //                            {
            //                                cn2.Open();
            //                                using (SqlCommand command2 = new SqlCommand(qs2, cn2))
            //                                {
            //                                    command2.Parameters.AddWithValue("@帳號", Convert.ToString(dataset.Tables[0].Rows[i][0]));
            //                                    command2.Parameters.AddWithValue("@姓名", Convert.ToString(dataset.Tables[0].Rows[i][1]));
            //                                    command2.Parameters.AddWithValue("@帳戶總價值", (float)Convert.ToDouble(dataset.Tables[0].Rows[i][2]));
            //                                    command2.Parameters.AddWithValue("@排名", i + 1);
            //                                    command2.ExecuteNonQuery();
            //                                }
            //                                cn2.Close();
            //                            }
            //                            i++;
            //                        }
            //                    }
            //                }
            //            }
            //        }
            //        cn00.Close();
            //    }

            //    //做帳戶總價值平均

            //    SqlDataAdapter adapter3 = new SqlDataAdapter();
            //    string cs3 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //    string qs3 = "SELECT distinct CASE WHEN NOT EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) Then [User].餘額 WHEN EXISTS(SELECT Own.帳號 WHERE Own.帳號=[User].帳號) THEN SUM(Stock.收盤*1000*Own.數量)+[User].餘額 END AS'帳戶總價值',[User].帳號 FROM [User],Stock,Own  WHERE ([User].身份=@身份) AND (Stock.時間=@時間) AND (Own.股票號碼=Stock.代號) AND [User].帳號=(case when EXISTS(select [User].姓名 FROM Own WHERE [User].帳號=Own.帳號) then (Own.帳號) else ([User].帳號) end ) group by [User].姓名,[User].餘額,[User].帳號,[OWN].帳號 Order by 帳戶總價值 DESC";
            //    double mean = 0; //平均
            //    double stantard = 0; //標準差
            //    using (SqlConnection cn3 = new SqlConnection(cs3))
            //    {
            //        cn3.Open();
            //        using (SqlCommand command3 = new SqlCommand(qs3, cn3)) //insert 帳戶總價值
            //        {
            //            command3.Parameters.AddWithValue("@時間", Session["Date"]);
            //            command3.Parameters.AddWithValue("@身份", "使用者");
            //            DataSet dataset3 = new DataSet();
            //            adapter3.SelectCommand = command3;
            //            adapter3.Fill(dataset3);

            //            if (dataset3.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值)
            //            {
            //                //算平均
            //                int i = 0;
            //                while (i < dataset3.Tables[0].Rows.Count)
            //                {
            //                    mean += Convert.ToDouble(dataset3.Tables[0].Rows[i][0]);
            //                    i++;
            //                }
            //                mean = mean / dataset3.Tables[0].Rows.Count;
            //                lAvg.Text = Convert.ToString(Convert.ToInt32(mean));

            //                //算標準差
            //                i = 0;
            //                while (i < dataset3.Tables[0].Rows.Count)
            //                {
            //                    stantard += Math.Pow(Convert.ToDouble(dataset3.Tables[0].Rows[i][0]) - mean, 2);
            //                    i++;
            //                }
            //                stantard = Math.Pow(stantard / (dataset3.Tables[0].Rows.Count - 1), 0.5);
            //                lSd.Text = Convert.ToString(Convert.ToInt32(stantard));
            //            }
            //        }
            //        cn3.Close();
            //    }
            //}
        }
        private bool LogoutWasClicked = false;

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["StuName"] = "";
            lStuName.Text = "未登入";
            LogoutWasClicked = true;
            Response.Redirect("login.aspx");
        }

        protected void Check(object sender, EventArgs e)
        {   //檢查股票有沒有更新

            //判斷今天有沒有這項股票存在  判斷今天更新了沒
            //SqlDataAdapter adapter1 = new SqlDataAdapter();
            //string cs1 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //string qs1 = "SELECT 名稱 FROM [Stock] WHERE (代號=@代號) AND (時間=@時間)";
            //using (SqlConnection cn1 = new SqlConnection(cs1))
            //{
            //    cn1.Open();
            //    using (SqlCommand command1 = new SqlCommand(qs1, cn1))
            //    {
            //        command1.Parameters.AddWithValue("@代號", "1234");
            //        command1.Parameters.AddWithValue("@時間", Session["Date"]);

            //        DataSet dataset = new DataSet();
            //        adapter1.SelectCommand = command1;
            //        adapter1.Fill(dataset);

            //        if (dataset.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值)
            //        {

            //        }
            //        else if (dataset.Tables[0].Rows.Count == 0)  //沒值 
            //        {
            //            lMessage.ForeColor = System.Drawing.Color.Red;
            //            lMessage.Text = "今日股票可能尚未更新 或 更新中";

            //            Process StockUpdate = new Process();  //更新股價
            //            // FileName 是要執行的檔案
            //            StockUpdate.StartInfo.FileName = "C:/Users/Tommy/Desktop/FindStock.exe";
            //            StockUpdate.Start();

            //            //=====偵測執行中的外部程式並關閉=====
            //            Process[] MyProcess = Process.GetProcessesByName("FindStock");  //不用加路徑和副檔名
            //            if (MyProcess.Length > 1)
            //            {   //如果有2個或以上在跑
            //                if (DateTime.Compare(MyProcess[0].StartTime, MyProcess[1].StartTime) < 0) //如果前面比較小(早)
            //                {
            //                    MyProcess[1].Kill();   //關閉執行中的程式 (關掉後面的)
            //                }
            //                else
            //                {
            //                    MyProcess[0].Kill();   //關閉執行中的程式 (關掉前面的)
            //                }
            //            }
            //        }
            //    }

            //    cn1.Close();
            //}



        }
    }
}