using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }
    protected void btnAdlogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=GroceryDB;Integrated Security=True" );
        SqlCommand cmd = new SqlCommand(@"select *  from Admin where UserName='" + txtUnameAd.Text.Trim() + "' and Password='" + txtPassAd.Text.Trim() + "'", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["Admin"] = txtUnameAd.Text.Trim();
            Response.Redirect("~/Admin/Admin.aspx");
        }
        else
        {
            spnmsg.Visible = true;
        }
        cn.Close();
    }
}