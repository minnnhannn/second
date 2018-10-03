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
    public partial class manager_control : System.Web.UI.Page
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

            if (StuNameShow == "" || Capacity !="Manager")
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

        protected void UserAdd_Click(object sender, EventArgs e)
        {
            lmessage.Text = "";

            try
            {
                String sAddName = tb_AddName.Text;
                String sAddID = tb_AddID.Text;
                String sAddPass = tb_AddPass.Text;
                String sAddMail = tb_AddMail.Text;
                String sAddPhone = tb_AddPhone.Text;


                if (!sAddName.Equals("") && !sAddID.Equals("") && !sAddPass.Equals("") && !sAddMail.Equals("") && !sAddPhone.Equals(""))
                {
                    //密碼驗證
                    Regex regex = new Regex(@"^(?!.*\W).{8,10}$");  //不能有特殊符號 長度8~10
                    Regex regex2 = new Regex(@"^.*(?=.{8,})(?=.*\d)(?=.*[a-zA-Z]).*$"); //含英文數字八碼

                    if (regex.IsMatch(tb_AddPass.Text))
                    {
                        if (regex2.IsMatch(tb_AddPass.Text))
                        {
                            try
                            {

                                //DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);

                                lmessage.ForeColor = System.Drawing.Color.Blue;
                                lmessage.Text = "新增成功";
                            }
                            catch (Exception ex)
                            {
                                lmessage.ForeColor = System.Drawing.Color.Red;
                                lmessage.Text = ex.Message;
                            }
                        }
                        else
                        {
                            lmessage.ForeColor = System.Drawing.Color.Red;
                            lmessage.Text = "密碼需含英文和數字共8碼";
                        }
                    }
                    else
                    {
                        lmessage.ForeColor = System.Drawing.Color.Red;
                        lmessage.Text = "密碼不能有特殊符號，需含英文和數字共8碼";
                    }
                }
                else
                {
                    lmessage.ForeColor = System.Drawing.Color.Red;
                    lmessage.Text = "有項目未填";
                }


            }
            catch (Exception ex)
            {
                lmessage.ForeColor = System.Drawing.Color.Red;
                lmessage.Text = ex.Message;
            }
        }

        protected void UserClear_Click(object sender, EventArgs e)
        {
            tb_AddName.Text = "";
            tb_AddID.Text = "";
            tb_AddPass.Text = "";
            tb_AddMail.Text = "";
            tb_AddPhone.Text = "";
        }
    }
}