using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace trading2018
{
    public partial class singlesearch : System.Web.UI.Page
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
            lStuName2.Text = StuNameShow;

            if (StuNameShow == "")
            {
                Response.Write("<script>alert('非本系統會員，請先登入!');location.href='login.aspx'; </script>");
            }
            else
            {
                if (Capacity == "Manager")
                {
                    titleshow.Text = "[ Manager ] NCHU STOCK MONOPOLY";
                    usermenu.Visible = false;
                    managermenu.Visible = true;
                    usershow.Visible = false;
                    m_sid.Visible = true;
                    usertable.Visible = false;
                }
                else if (Capacity == "Member")
                {
                    titleshow.Text = "NCHU STOCK MONOPOLY";
                    usermenu.Visible = true;
                    managermenu.Visible = false;
                    usershow.Visible = true;
                    m_sid.Visible = false;
                    usertable.Visible = true;
                }
                    
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
            //if (Session["Capacity"].ToString().Equals("管理者"))
            //{
            //    try
            //    {
            //        lMessage.ForeColor = System.Drawing.Color.Blue;

            //        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            //        //將前端SQL語法引用到後端

            //    }
            //    catch (Exception ex)
            //    {
            //        lMessage2.ForeColor = System.Drawing.Color.Red;
            //        lMessage2.Text = ex.Message;

            //    }
            //}
            //else
            //{
            //    tb_SID.Text = "";

            //    //判斷使用者輸入 有沒有這項股票存在  
            //    SqlDataAdapter adapter1 = new SqlDataAdapter();
            //    string cs1 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //    string qs1 = "SELECT 名稱 FROM [Stock] WHERE (代號=@代號)";
            //    using (SqlConnection cn1 = new SqlConnection(cs1))
            //    {
            //        cn1.Open();
            //        using (SqlCommand command1 = new SqlCommand(qs1, cn1))
            //        {
            //            command1.Parameters.AddWithValue("@代號", tb_SID.Text);

            //            DataSet dataset = new DataSet();
            //            adapter1.SelectCommand = command1;
            //            adapter1.Fill(dataset);


            //            if (dataset.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值)
            //            {
            //                try
            //                {
            //                    lMessage.Text = "";

            //                    DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            //                    //將前端SQL語法引用到後端

            //                }
            //                catch (Exception ex)
            //                {
            //                    lMessage.ForeColor = System.Drawing.Color.Red;
            //                    lMessage.Text = ex.Message;

            //                }

            //            }
            //            else if (dataset.Tables[0].Rows.Count == 0)  //沒值 
            //            {
            //                lMessage.ForeColor = System.Drawing.Color.Red;
            //                lMessage.Text = "查無此股票";
            //            }
            //        }

            //        cn1.Close();
            //    }

        }

        protected void Confirm_Click2(object sender, EventArgs e)
        {
            tb_SID.Text = "";
            //判斷使用者輸入 有沒有這項股票存在  
            //SqlDataAdapter adapter1 = new SqlDataAdapter();
            //string cs1 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
            //string qs1 = "SELECT 代號 FROM [Stock] WHERE (名稱 Like'%'+@名稱+'%')";
            //using (SqlConnection cn1 = new SqlConnection(cs1))
            //{
            //    cn1.Open();
            //    using (SqlCommand command1 = new SqlCommand(qs1, cn1))
            //    {
            //        command1.Parameters.AddWithValue("@名稱", tb_SNAME.Text);

            //        DataSet dataset = new DataSet();
            //        adapter1.SelectCommand = command1;
            //        adapter1.Fill(dataset);

            //        if (dataset.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值)
            //        {
            //            try
            //            {
            //                lMessage2.Text = "";
            //                DataView dv = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            //                //將前端SQL語法引用到後端

            //            }
            //            catch (Exception ex)
            //            {
            //                lMessage2.ForeColor = System.Drawing.Color.Red;
            //                lMessage2.Text = ex.Message;

            //            }

            //        }
            //        else if (dataset.Tables[0].Rows.Count == 0)  //沒值 
            //        {
            //            lMessage2.ForeColor = System.Drawing.Color.Red;
            //            lMessage2.Text = "查無此股票";
            //        }
            //    }

            //    cn1.Close();
            //}
        }
    }
}