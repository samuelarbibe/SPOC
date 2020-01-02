using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCartDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string productId = Request.QueryString["ProductID"];
        string buy = Request.QueryString["BUY"];
        DateTime timeNow = DateTime.Now;
        string sqlFormattedDate = timeNow.ToString("MM/dd/yyyy HH:mm:ss");


        if (Session["user"] == null)
        {
            Response.Redirect("Home.aspx");
        }

        if(productId == null)
        {
            if (buy != null)
            {
                DAL.DoQuery("UPDATE Orders SET pending=0, Time='" + sqlFormattedDate + "' WHERE pending=1 AND buyerName='" + Session["user"] + "'");
                Response.Redirect("ShoppingCart.aspx");
            }
            else
            {
                Response.Redirect("ShoppingCart.aspx");
            }
        }
        else
        {
            DAL.DoQuery("DELETE FROM Orders WHERE buyerName='" + Session["user"] + "' AND productId='" + productId + "'");
            Response.Redirect("ShoppingCart.aspx?DELETE=" + productId + "");
        }
    }
}