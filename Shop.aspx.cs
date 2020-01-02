using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop : System.Web.UI.Page
{
    public string content;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user"] == null)
        {
        //    Response.Redirect("Login.aspx");
        }
         
        string order = Request.Form["order"];

        Response.Write(order);
        content = DatabaseHelper.GetProductHTML();
    }
}