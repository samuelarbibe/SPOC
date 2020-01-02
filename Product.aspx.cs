using System;

public partial class Product : System.Web.UI.Page
{
    public string content;
    public string table;
    public string productId;

    protected void Page_Load(object sender, EventArgs e)
    {
        productId = Request.QueryString["ProductID"];
        string buy = Request.Form["buy"];
        string show = "<a href='ShoppingCart.aspx?ProductID="+productId+"'><button>BUY IT NOW</button></a>";

        if (productId == null)
        {
            Response.Redirect("Shop.aspx");
        }

        if (Session["user"] == null)
        {
            show = "<button onclick='show()'>BUY IT NOW</button>";
        }

        content = DatabaseHelper.GetProductOverviewHTML(productId, show);
        table = DatabaseHelper.GetProductInfoHTML(productId);
    }
}