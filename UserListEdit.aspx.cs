using System;

public partial class UserListEdit : System.Web.UI.Page
{
    public string msg = "";
    public string userId;
    public object usernameFill;
    public object passwordFill;
    public object cityFill;
    public object EmailFill;
    public object profilePictureFill;
    public object phoneNumberFill;


    protected void Page_Load(object sender, EventArgs e)
    {
         userId = Request.QueryString["userID"];

        if (Session["user"] == null || userId == null)
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            
            string username = Request.Form["username"];
            string password1 = Request.Form["password1"];
            string password2 = Request.Form["password2"];
            string gender = Request.Form["gender"];
            string admin = Request.Form["admin"];
            string city = Request.Form["city"];
            string Email = Request.Form["Email"];
            string submit = Request.Form["submit"];
            string timeNow = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            string profilePicture = Request.Form["PP"];
            string phoneNumber = Request.Form["PN"];

            int age = Convert.ToInt32(Request.Form["age"]);
            int thisYear = Convert.ToInt32(DateTime.Now.ToString("yyyy"));

            int birthYear = thisYear - age;
            int adminInt = 0;

            bool Match = (password1 == password2);//בודק אם הסיסמא הראשונה והשנייה מתאימות זו לזו
            bool isExist = DAL.IsExist("SELECT * FROM Users WHERE username='" + username + "'");

            usernameFill = DAL.ExecuteDataTable("SELECT Username FROM Users WHERE Id='" + userId + "'");
            passwordFill = DAL.ExecuteDataTable("SELECT Password FROM Users WHERE Id='" + userId + "'");
            cityFill = DAL.ExecuteDataTable("SELECT City FROM Users WHERE Id='" + userId + "'");
            EmailFill = DAL.ExecuteDataTable("SELECT Email FROM Users WHERE Id='" + userId + "'");
            profilePictureFill = DAL.ExecuteDataTable("SELECT ProfilePicture FROM Users WHERE Id='" + userId + "'");
            phoneNumberFill = DAL.ExecuteDataTable("SELECT PhoneNumber FROM Users WHERE Id='" + userId + "'");

            if (admin != null)
            {
                adminInt = 1;
            }


            if (submit == null)
            {
            }
            else
            {
                DAL.DoQuery("UPDATE Users SET Username='" + username + "', Password='" + password1 + "', Admin='"+ adminInt + "', City='" + city + "', BirthYear='" + birthYear + "', Gender='" + gender + "', ProfilePicture='xxx', Registration='" + timeNow + "', PhoneNumber='" + phoneNumber + "', Email='" + Email + "', XP='0' WHERE Id='"+userId+"'");
                msg = "";
                Response.Redirect("UserList.aspx?EDIT="+userId+"");
            }
        }
    }
}