using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace LMS_ProjectTraining
{
    public partial class Login : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialization code, if needed
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                // For member login
                SqlCommand cmd = new SqlCommand("sp_UserLogin", dbcon.GetCon());
                dbcon.OpenCon();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@member_id", txtMemberID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successfully');</script>");
                        Session["role"] = "user";
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["status"] = dr.GetValue(3).ToString();
                        Session["mid"] = txtMemberID.Text.Trim();
                    }
                    Response.Redirect("~/UserScreen/UserHome.aspx");
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Error! Invalid credentials...try again','error')", true);
                }
                dr.Close();
                dbcon.CloseCon();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Error: " + ex.Message + "','error')", true);
            }
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            try
            {
                // Admin login button
                SqlCommand cmd = new SqlCommand("sp_AdminLogin", dbcon.GetCon());
                dbcon.OpenCon();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", txtAdminID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtAdminPass.Text.Trim());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success','Login Successfully','success')", true);
                        Session["Adminrole"] = "Admin";
                        Session["Adminusername"] = dr.GetValue(0).ToString();
                        Session["Adminfullname"] = dr.GetValue(2).ToString();
                    }
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Invalid credentials...try again','error')", true);
                }
                dr.Close();
                dbcon.CloseCon();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Error: " + ex.Message + "','error')", true);
            }
        }
    }
}