using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string log;
    public object name;
    public object counter;
    public object shoppingCart;
    public string admin;
    public string scroll;

    protected void Page_Load(object sender, EventArgs e)
    {

        counter = Application["counter"];

        if (Session["user"] == null)
        {
            shoppingCart = "<li class='cart' onclick=" + "location.href='ShoppingCart.aspx'" + ">+</li>";
            log = "<a href='Login.aspx'>LOGIN</a>";
            name = "GUEST";
        }
        else
        {
            
            shoppingCart = "<li class='cart' onclick="+"location.href='ShoppingCart.aspx'"+">" + DAL.printDataTable("SELECT COUNT(*) FROM Orders WHERE pending = '1' AND buyerName = '" + Session["user"] + "'")+"</li>";
            log = "<a href='Logout.aspx'>LOGOUT</a>";
            name = Session["user"];
        }

        

        if (DAL.IsExist("SELECT Username FROM Users WHERE Username='" + Session["user"] + "' AND Admin='1' ") == true)
        {
            admin = "<br/><a href='UserList.aspx'>*USERS*</a><br/>";
        }

        string contact = Request.QueryString["contact"];

        if (contact != null)
        {
            scroll = "2500";
        }
        else
        {
            scroll = "1";
        }
    }
}
