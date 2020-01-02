using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserListDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userId = Request.QueryString["userID"];

        if(Session["user"] == null || userId == null)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            object username = DAL.ExecuteDataTable("SELECT Username FROM Users WHERE Id='" + userId + "'");
            DAL.DoQuery("DELETE FROM Users Where Id='" + userId + "'");
            Response.Redirect("UserList.aspx?DELETE=" + username + "");
        }
    }
}