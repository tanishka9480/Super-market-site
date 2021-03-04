using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


public partial class MasterPage : System.Web.UI.MasterPage
{
  
    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {
            cartcount();
        }

  
    }
    protected void lbtoredrhistory_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SuperMarketOrderHistory.aspx");
    }
    public void cartcount()
    {
        if (Session["Cart"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Cart"];
            int coun = dt.Rows.Count;
            ltitemCount.Text = coun.ToString();
        }
    }
  
}

