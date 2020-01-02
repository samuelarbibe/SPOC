using System;

public partial class Register : System.Web.UI.Page
{
    public string msg = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string username = Request.Form["username"];
        string password1 = Request.Form["password2"];
        string password2 = Request.Form["password2"];
        string gender = Request.Form["gender"];
        string city = Request.Form["city"];
        string Email = Request.Form["Email"];
        string submit = Request.Form["submit"];
        string timeNow = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        string profilePicture = Request.Form["PP"];
        string phoneNumber = Request.Form["PN"];

        int age = Convert.ToInt32(Request.Form["age"]);
        int thisYear = Convert.ToInt32(DateTime.Now.ToString("yyyy"));

        int birthYear = thisYear - age;

        bool Match = (password1 == password2);//בודק אם הסיסמא הראשונה והשנייה מתאימות זו לזו
        bool isExist = DAL.IsExist("SELECT * FROM Users WHERE username='" + username + "'");

        if (submit == null)
        {
        }
        else
        {
            if (isExist == true)//במקרה וכבר קיים שם משתמש עם אותו שם
            {
                msg = "this username allready exists. please change it.";
            }
            else if (isExist == false)//ואם אין
            {
                DAL.DoQuery("INSERT INTO users(Username, Password, Admin, City, BirthYear, Gender, ProfilePicture, Registration, PhoneNumber, Email, XP ) VALUES('" + username + "', '" + password1 + "', '0', '" + city + "', '" + birthYear + "', '" + gender + "', 'xxx', '" + timeNow + "', '" + phoneNumber + "', '" + Email + "', '0' )");
                Response.Redirect("login.aspx");
                msg = "";
            }
        }
    }
}