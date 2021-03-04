using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    public static int i = 0;
    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (i == 1)
        {

            if (i == 1)
            {
                lblResult.Text = "UserName Or Password is Incorrect";
                i = 0;
            }
        }

    }

    
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=GroceryDB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand(@"select * from Registration where  Email='" + txtUserName.Text.Trim() + "' and Password='" + txtPassword.Text.Trim() + "' ", cn);

        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {

            Session["User"] = txtUserName.Text.Trim();
            Response.Redirect("SuperMarketProducts.aspx");

        }
        else
        {
            i = 1;
        }
        cn.Close();
    }
}