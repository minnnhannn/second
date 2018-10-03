using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trading2018
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Login_Click(object sender, EventArgs e)
        {

            if (CheckLogin(Request.Form["Account"], Request.Form["Password"]))
            {
                Response.Write("<script>alert(\"登入成功!\"); </script>");

                if ( Session["Capacity"].ToString() == "Manager")
                {
                    Response.Redirect("manager_main.aspx");
                }
                else
                {
                    Response.Redirect("home.aspx");
                }
                    
            }
            else
            {
                Response.Write("<script>alert(\"登入失敗\"); </script>");
            }





        }
        private bool CheckLogin(string Account, string Password)
        {
            bool check = false;
            DB conn = new DB(WebConfigurationManager.ConnectionStrings["SQLDB"].ConnectionString.ToString());
            List<SqlParameter> paramters = new List<SqlParameter>();
            paramters.Add(new SqlParameter("Account", Account));
            paramters.Add(new SqlParameter("Password", Password));
            DataTable table = conn.ExecuteProc("[StockManage_2018].[dbo].[CHECKLOGIN]", paramters);
            Session["StuName"] = null;
            Session["StuID"] = null;
            Session["Capacity"] = null;

            //取學生姓名
            string StuName = String.Empty;
            if (table.Rows.Count != 0) check = true;
            StuName = table.Rows[0]["Name"].ToString();
            Session["StuName"] = StuName;
            //取學生ID
            string StuID = String.Empty;
            if (table.Rows.Count != 0) check = true;
            StuID = table.Rows[0]["Account"].ToString();
            Session["StuID"] = StuID;
            //取身分別
            string Capacity = String.Empty;
            if (table.Rows.Count != 0) check = true;
            Capacity = table.Rows[0]["Capacity"].ToString(); //DB連線才用
            Session["Capacity"] = Capacity;
            //foreach (DataRow row in table.Rows) {    
            //}
            return check;
        }
    }
}