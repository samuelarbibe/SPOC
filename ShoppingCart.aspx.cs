using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    public string content = "";
    public string addedItem;
    //public int sum = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        string productId = Request.QueryString["ProductID"];
        string delete = Request.QueryString["DELETE"];
        string add = Request.QueryString["ADD"];
        DateTime timeNow = DateTime.Now;
        string sqlFormattedDate = timeNow.ToString("MM/dd/yyyy HH:mm:ss");
        object username = Session["user"];
        string checkout = Request.Form["checkout"];

        

        if (Session["user"] == null)
        {
            content += "<p style='margin-top:25%;'><span style='font-size:20px;font-family:sans-serif'>You Are not logged in.</span><br/><br/> In order to see Your shopping cart's content, you will need to be logged in.<br/>";
            content += "<a class='link' href='Login.aspx?ShoppingCart=1'>Click Here</a> To log-in.</p>";
        }
        else {

            if (productId != null)
            {
                DAL.DoQuery("INSERT INTO Orders(productId, buyerName, pending, Time) VALUES('" + productId + "', '" + username + "', '1', '" + sqlFormattedDate + "')");
                Response.Redirect("ShoppingCart.aspx?ADD=" + productId + "");
            }

            if (add != null)
            {
                object ModelName = DAL.printDataTable("SELECT ModelName FROM Products WHERE Id='" + add + "'");
                object CompanyName = DAL.printDataTable("SELECT CompanyName FROM Products WHERE Id='" + add + "'");
                //int cost = Convert.ToInt32(DAL.printDataTable("SELECT Price FROM Products WHERE Id='" + add + "'"));
                addedItem = "<div class='continue'><span> You just added <span>" + CompanyName + "&nbsp" + ModelName + " </span> to your shopping cart. &nbsp<a href='Shop.aspx#anchor'>Continue Shopping </a></span></div >";
                //sum += cost;
            }

            if(delete != null)
            {
                object ModelName = DAL.printDataTable("SELECT ModelName FROM Products WHERE Id='" + delete + "'");
                object CompanyName = DAL.printDataTable("SELECT CompanyName FROM Products WHERE Id='" + delete + "'");
                //int cost = Convert.ToInt32(DAL.printDataTable("SELECT Price FROM Products WHERE Id='" + delete + "'"));
                addedItem = "<div class='continue'><span> You have just removed <span>" + CompanyName + "&nbsp" + ModelName + " </span> from your shopping cart. &nbsp<a href='Shop.aspx'>Continue Shopping </a></span></div >";
                //sum -= cost;
             }

            if (DAL.IsExist("SELECT * FROM Orders WHERE pending = '1' AND buyerName = '" + Session["user"] + "'") == false)
            {
                content += "<p style='margin-top:25%;'><span style='font-size:20px;'>You have no items in Your shopping cart.</span><br/><br/> To add an Item to your shopping cart , Go to The<br/>";
                content += "<a class='link' href='Shop.aspx#anchor'>Shop</a> and add Items.</p>";
            }
            else
            {
                content += "<table>";
                content += DatabaseHelper.GetShoppingCartProductIdHTML(Session["user"]);
                content += "</table>";
                content += "<a href='ShoppingCartDelete.aspx?BUY=true' class='checkout' >Proceed to Checkout</a>";
            }
        }

        
    }
}