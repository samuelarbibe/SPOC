using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string msg;
    public string Action;

    protected void Page_Load(object sender, EventArgs e)
    {
        string username  = Request.Form["username"];
        string password  = Request.Form["password"];
        string submit    = Request.Form["submit"];

        string productId = Request.QueryString["ProductID"];
        string shoppingCart = Request.QueryString["ShoppingCart"];

        if (Application["counter"] == null)
        {
            Application["counter"] = 0;
        }

        if(productId != null) { 
            Action = "Login.aspx?ProductID="+productId+"";
        }
        else if(shoppingCart != null)
        {
            Action = "Login.aspx?ShoppingCart=1";
        }
        else
        {
            Action = "Login.aspx";
        }

        bool isExist = DAL.IsExist("SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'");//בדיקה אם המשתמש והסיסמא קיימים ומתאימים זה לזה

        if (submit == null)
        {
            msg = "";
        }
        else
        {
            if (isExist == true)
            {
                Session["user"] = username;

                int count = (int)Application["counter"];
                count++;
                Application["counter"] = count;

                productId = Request.QueryString["ProductID"];
                shoppingCart = Request.QueryString["ShoppingCart"];

                if (productId != null)
                {
                    Response.Redirect("Product.aspx?ProductID=" + productId + "");
                }
                else if (shoppingCart != null)
                {
                    Response.Redirect("ShoppingCart.aspx");
                }
                else
                {
                    Response.Redirect("Shop.aspx");
                }
            }
            else if (isExist == false)//אם לא, מוצגת ההודעה הבאה:
            {
                msg = "your userame or password is wrong.";
            }      
        }
    }
}