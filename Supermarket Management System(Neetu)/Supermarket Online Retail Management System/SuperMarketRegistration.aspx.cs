using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter dap;
    DataTable dt;
    String str;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=GroceryDB;Integrated Security=True");



        if (!IsPostBack)
        {
            str = "select distinct(state) from StateCity";
            dap = new SqlDataAdapter(str, cn);
            dt = new DataTable();
            dap.Fill(dt);

            State.DataSource = dt;
            State.DataTextField = "state";
            State.DataBind();

            str = "select city from StateCity where state='" + State.Text + "'";
            dap = new SqlDataAdapter(str, cn);
            dt = new DataTable();
            dap.Fill(dt);
            City.DataSource = dt;
            City.DataTextField = "city";
            City.DataBind();

        }
    }
    protected void State_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=GroceryDB;Integrated Security=True");
  

            str = "select city from StateCity where state='" + State.Text + "'";
            dap = new SqlDataAdapter(str, cn);
            dt = new DataTable();
            dap.Fill(dt);
            City.DataSource = dt;
            City.DataTextField = "city";
            City.DataBind();


    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        
        

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click1(object sender, EventArgs e)
    {

    }
    protected void btncancel_Click1(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click2(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=GroceryDB;Integrated Security=True");

        SqlCommand cmd = new SqlCommand(@"Insert into Registration values ('" + txtname.Text.Trim() + "','" + txtemail.Text.Trim() + "','" + txtpass.Text.Trim() + "','" + rblGender.SelectedValue + "'," + txtphone.Text.Trim() + ",'" + txtclendar.Text + "','"
        + txtstreet.Text.Trim() + "','" + ddlcountry.SelectedValue + "','" + State.SelectedValue + "','" + City.SelectedValue + "','" + txtPostal.Text.Trim() + "')", cn);
        SqlCommand cmd1 = new SqlCommand(@"insert into Login Values('" + txtemail.Text.Trim() + "','" + txtpass.Text.Trim() + "')", cn);
        cn.Open();



        Session["UserEmail"] = txtemail.Text.Trim();
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        Response.Redirect("SuperMarketRegisterSuccessful.aspx");

        cn.Close();
    }
}