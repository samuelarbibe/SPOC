using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;




/// <summary>
/// DAL (Data Access Layer) helps you use the database
/// </summary>
public class DAL
{


    public DAL()
    {
        //כאן לא צריך לעשות דבר
    }



    /******************************************************************************************
     *                                                                                        *
     * פעולה פנימית לשימוש הפעולות האחרות בקובץ הזה בלבד. אין להשתמש בה מקבצים אחרים *
     *                                                                                        *
     ******************************************************************************************/




    //TODO
    //טענת כניסה: הפעולה מקבלת שם של מסד נתונים
    //טענת יציאה: הפעולה מחזירה אובייקט התחברות למסד הנתונים
    public static SqlConnection ConnectToDb()
    {
        string databaseName = "Database.mdf";
        string dbPath = HttpContext.Current.Server.MapPath("/App_Data/" + databaseName);
        string connectionString = string.Format(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename={0}; Integrated Security = True", dbPath);
        SqlConnection conn = new SqlConnection(connectionString);
        return conn;
    }





    /*****************************************************
     *                                                   *
     * בחלק זה יש פעולות שמאחזרות מידע ממסד הנתונים *
     *                                                   *
     *****************************************************/




    //TODO
    //טענת כניסה: הפעולה מקבלת שם מסד נתונים ושאילתא לאיחזור נתונים ספציפיים
    //טענת יציאה: פעולה מחזירה אובייקט מסוג אדפטר שמכיל טבלה עם נתונים שאוחזרו
    public static DataTable ExecuteDataTable(string sql)
    {
        SqlConnection conn = ConnectToDb();
        conn.Open();
        SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        conn.Close();
        return dt;
    }




    //TODO
    //טענת כניסה: הפעולה מקבלת שם מסד נתונים ושאילתא לאיחזור נתונים ספציפיים
    //טענת יציאה: הפעולה מחזירה אמת אם הנתונים קיימים ושקר אחרת
    public static bool IsExist(string sql)
    {
        SqlConnection conn = ConnectToDb();
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        SqlDataReader adapter = com.ExecuteReader();
        bool found; //מאתחלים משתנה חדש מסוג בוליאני (אמת/שקר) שנקרא פאונד
        found = (bool)adapter.Read(); // קוראים מה יש בתוך המשתנה דאטה ומתייחסים אל התוצאה כערך בוליאני. אם יש נתונים לקריאה - יושם אמת בתוך המשתנה פאונד. אחרת הערך אינו קיים במסד הנתונים - יושם שקר בתוך המשתנה פאונד
        conn.Close();
        return found;
    }





    /*****************************************************************
     *                                                               *
     * בחלק זה יש פעולות שעושות שינוי במידע השמור במסד הנתונים *
     *                                                               *
     *****************************************************************/




    //TODO
    //טענת כניסה: הפעולה מקבלת שם מסד נתונים ושאילתא מסוג מחיקה/הוספה/עדכון
    //טענת יציאה: הפעולה אינה מחזירה דבר
    public static void DoQuery(string sql)
    {
        SqlConnection conn = ConnectToDb();
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        com.ExecuteNonQuery();
        conn.Close();
    }




    //TODO
    //טענת כניסה: הפעולה מקבלת שם מסד נתונים ושאילתא מסוג מחיקה/הוספה/עדכון
    //טענת יציאה: הפעולה מחזירה את מספר השורות שהושפעו על ידי השאילתא
    public static int DoQueryWithRowsAffected(string sql)
    {
        SqlConnection conn = ConnectToDb();
        conn.Open();
        SqlCommand com = new SqlCommand(sql, conn);
        int rowsA = com.ExecuteNonQuery();
        conn.Close();
        return rowsA;
    }






    /******************************************************************************
     *                                                                            *
     * בחלק זה יש פעולות שנועדו לסייע בביצוע מטלה נפוצה של הדפסת מידע      *
     * עוזר במיוחד לבדיקות בזמן הפיתוח קוד, ופחות שימושי לתוצר הסופי       *
     *                                                                            *
     ******************************************************************************/






    //TODO
    //טענת כניסה: הפעולה מקבלת שם של מסד נתונים ושאילתא של שליפת נתונים
    //טענת יציאה: HTML -הפעולה מחזירה מחרוזת שמכילה שורות של טבלה מלאה המוכנה להדפסה ב
    public static string printDataTable(string sql)
    {
        DataTable dt = ExecuteDataTable(sql);
        string printStr = "";
        foreach (DataRow row in dt.Rows)
        {
            //string id = row["Id"].ToString();

            printStr += "<tr>";
            foreach (object myItemArray in row.ItemArray)
            {
                printStr += "<td>" + myItemArray.ToString() + "</td>";
            }
            printStr += "</tr>";
        }
        return printStr;
    }


}
