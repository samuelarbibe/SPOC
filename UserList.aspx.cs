using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserList : System.Web.UI.Page
{
    public string UserTable;
    public string action;

    protected void Page_Load(object sender, EventArgs e)
    {
        string delete = Request.QueryString["DELETE"];
        string edit = Request.QueryString["EDIT"];


        if (DAL.IsExist("SELECT Username FROM Users WHERE Username='" + Session["user"] + "' AND Admin='1' ") == false)
        {
            Response.Redirect("Home.aspx");
        }

        UserTable = DatabaseHelper.GetAdminUserListHTML();

        if(delete != null)
        {
            action = "<div class='continue'><span>" + delete + " Has just been successfully Deleted From this Website.</span></div >";
        }

        if (edit != null)
        {
            object Username = DAL.printDataTable("SELECT Username FROM Users WHERE Id='" + edit + "'");
            action = "<div class='continue'><span>" + Username + "'s Information Has just been successfully Edited.</span></div >";
        }
    }
}