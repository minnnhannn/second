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
    public partial class record : System.Web.UI.Page
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
        }
        private bool LogoutWasClicked = false;

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["StuName"] = "";
            lStuName.Text = "未登入";
            LogoutWasClicked = true;
            Response.Redirect("login.aspx");
        }

        protected void TextChanged(object sender, EventArgs e)
        {
            string select_date = string.Empty;
            string format_date = string.Empty;

            select_date = datepicker.Text;

            string[] split_date = select_date.Split('/');
            format_date = select_date[2] + "/" + select_date[0] + "/" + select_date[1];
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            if (!datepicker.Text.Equals(""))
            {

                //判斷使用者輸入 有沒有這項訂單存在  
                SqlDataAdapter adapter2 = new SqlDataAdapter();
                string cs2 = "Data Source=localhost;User Id=ClassManager; Password=12345678; Initial Catalog=StockManage2018";
                string qs2 = "SELECT 股票號碼 FROM [UnsuccessfulRecord] WHERE (帳號=@帳號) AND (下單時間=@下單時間)";
                using (SqlConnection cn2 = new SqlConnection(cs2))
                {
                    cn2.Open();
                    using (SqlCommand command2 = new SqlCommand(qs2, cn2))
                    {
                        command2.Parameters.AddWithValue("@帳號", Session["ID"]);
                        command2.Parameters.AddWithValue("@下單時間", datepicker.Text);

                        DataSet dataset2 = new DataSet();
                        adapter2.SelectCommand = command2;
                        adapter2.Fill(dataset2);

                        if (dataset2.Tables[0].Rows.Count != 0)   //判斷dataset有沒有值  (有值) 有這項訂單
                        {
                            DataView dv = (DataView)SqlDataSource4.Select(DataSourceSelectArguments.Empty);
                            //將前端SQL語法引用到後端

                            Response.Write("<script>alert('已取消訂單');location.href='record.aspx'; </script>");
                        }
                        else
                        {
                            Warn.ForeColor = System.Drawing.Color.Red;
                            Warn.Text = "沒有這項訂單";
                        }
                    }
                }

            }
        }
    }
}