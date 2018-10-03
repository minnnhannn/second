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
    public partial class manager_record : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string StuNameShow = string.Empty;
            string Capacity = string.Empty;
            //StuNameShow = Session["StuName"].ToString(); //DB連線才使用
            //Capacity = Session["Capacity"].ToString(); //DB連線才用
            StuNameShow = "曾敏涵";//先固定塞值
            Capacity = "Manager"; //先固定塞值
            lStuName.Text = StuNameShow;

            if (StuNameShow == "" || Capacity != "Manager")
            {
                Response.Write("<script>alert('非管理員，請先登入!');location.href='login.aspx'; </script>");
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
    }
}