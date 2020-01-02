using System;
using System.Data;

/// <summary>
/// הקובץ הזה לוקח מידע ממסד הנתונים ויצר ממנו טבלהת שבה יש את שם השיחה ומספרה.
/// </summary>

//Categories Database
public class DatabaseHelper
{
    public static string GetProductHTML()
    {
        string sql = "SELECT * FROM Products ORDER BY Id";
        DataTable dt = DAL.ExecuteDataTable(sql);
        string printStr = "";
        foreach (DataRow row in dt.Rows)
        {
            string Image = row["Image"].ToString();
            string id = row["Id"].ToString();
            string ModelName = row["ModelName"].ToString();
            string CompanyName = row["CompanyName"].ToString();
            string Type = row["Type"].ToString();
            string Price = row["Price"].ToString();
            string Gender = row["Gender"].ToString();
            string Wheel_size = row["WheelSize"].ToString();
            string Frame_material = row["FrameMaterial"].ToString();
            string Suspension = row["Suspension"].ToString();

            int PriceInt = Convert.ToInt32(Price);
            string PriceRange = "";
            if (PriceInt >= 200 && PriceInt < 500) {PriceRange = "200_500"; }
            if (PriceInt >= 500 && PriceInt < 1000) {PriceRange = "500_1000"; }
            if (PriceInt >= 1000 && PriceInt < 2000) {PriceRange = "1000_2000"; }
            if (PriceInt >= 2000 && PriceInt < 3000) {PriceRange = "2000_3000"; }
            if (PriceInt >= 3000 && PriceInt < 4000) {PriceRange = "3000_4000"; }
            if (PriceInt >= 4000 && PriceInt < 5000) {PriceRange = "4000_5000"; }
            if (PriceInt >= 5000 && PriceInt <= 7500) {PriceRange = "5000_7500"; }
            else {PriceRange = "7500_10000"; }

            printStr += "<li class='" + Type + " " + Gender + " " + Wheel_size + " " + Frame_material + " " + Suspension + " " + CompanyName + " " + PriceRange + "  product'>";
            printStr += "<a href='Product.aspx?ProductID=" + id + "'>";
            printStr += "<img src=' " + Image + " ' />";
            printStr += "<h4>" + ModelName + "</h4>";
            printStr += "<h6>" + CompanyName + "</h6>";
            printStr += "<p>$" + Price + ".00</p>";
            printStr += "</a>";
            printStr += "</li>";
        }
        return printStr;
    }

    public static string GetProductOverviewHTML(string productId, string show)
    {
        string sql = "SELECT * FROM Products WHERE Id='" + productId + "'";
        DataTable dt = DAL.ExecuteDataTable(sql);
        string printStr = "";
        foreach (DataRow row in dt.Rows)
        {
            string Image = row["Image"].ToString();
            string id = row["Id"].ToString();
            string ModelName = row["ModelName"].ToString();
            string CompanyName = row["CompanyName"].ToString();
            string Price = row["Price"].ToString();
            string Description = row["Description"].ToString();

            printStr += "<div class='wrapper'>";
            printStr += "<img class='Image' src='" + Image + "'/>";
            printStr += "<div class='left_container'>";
            printStr += "<div class='product_name'>";
            printStr += "<h2>" + ModelName + "</h2>";
            printStr += "<h3>" + CompanyName + "</h3>";
            printStr += "</div>";
            printStr += "<p class='overview'>"+Description+"</p>";
            printStr += "<div class='extra'>";
            printStr += "<div class='selection'>";
            printStr += "<h6>SIZE</h6>";
            printStr += "<select>";
            printStr += "<option>XS</option>";
            printStr += "<option>S</option>";
            printStr += "<option>M</option>";
            printStr += "<option>L</option>";
            printStr += "<option>XL</option>";
            printStr += "</select>";
            printStr += "<br /><br /><br />";
            printStr += "<span class='price'>$"+Price+".00</span>";
            printStr += "<br /><br/>";
            printStr += show;
            printStr += "<br /><br />";
            printStr += "<h6>PART NO: 536D7HA-"+id+"</h6>";
            printStr += "</div>";
            printStr += "</div>";
            printStr += "</div>";
            printStr += "</div>";

        }
        return printStr;
    }

    public static string GetProductInfoHTML(string productId)
    {
        string sql = "SELECT * FROM Products WHERE Id='" + productId + "'";
        DataTable dt = DAL.ExecuteDataTable(sql);
        string printStr = "";
        foreach (DataRow row in dt.Rows)
        {
            string Image = row["Image"].ToString();
            string id = row["Id"].ToString();
            string ModelName = row["ModelName"].ToString();
            string CompanyName = row["CompanyName"].ToString();
            string Type = row["Type"].ToString();
            string Price = row["Price"].ToString();
            string Gender = row["Gender"].ToString();
            string Wheel_size = row["WheelSize"].ToString();
            string Weight = row["Weight"].ToString();
            string Frame_material = row["FrameMaterial"].ToString();
            string Suspension = row["Suspension"].ToString();

            printStr += "<table>";
            printStr += "<tr>";
            printStr += "<td>Name</td>";
            printStr += "<td>"+ModelName+"</td>";
            printStr += "</tr>";
            printStr += "<tr>";
            printStr += "<td>Manufacturer</td>";
            printStr += "<td>"+CompanyName+"</td>";
            printStr += "</tr>";
            printStr += "<tr>";
            printStr += "<td>Type</td>";
            printStr += "<td>"+Type+"</td>";
            printStr += "</tr>";
            printStr += "<tr>";
            printStr += "<td>Gender</td>";
            printStr += "<td>"+Gender+"</td>";
            printStr += "</tr>";
            printStr += "<tr>";
            printStr += "<td>Wheel Diameter</td>";
            printStr += "<td>"+Wheel_size+"</td>";
            printStr += "</tr>";
            printStr += "<tr>";
            printStr += "<td>Weight</td>";
            printStr += "<td>"+ Weight + " kg</td>";
            printStr += "</tr>";
            printStr += "<tr>";
            printStr += "<td>Frame Material</td>";
            printStr += "<td>"+Frame_material+"</td>";
            printStr += "</tr>";
            printStr += "<tr>";
            printStr += "<td>Suspension Travel</td>";
            printStr += "<td>"+Suspension+" mm</td>";
            printStr += "</tr>";
            printStr += "</table>";
        }
        return printStr;
    }

    public static string GetShoppingCartProductIdHTML(object username)
    {
        string sql = "SELECT * FROM Orders WHERE buyerName='"+username+"' AND pending='1'";
        DataTable dt = DAL.ExecuteDataTable(sql);
        string printStr = "<tr><th>Image</th><th>Product</th><th>Price</th><th>Id</th><th></th></tr>";
        foreach (DataRow row in dt.Rows)
        {
            string productId = row["ProductId"].ToString();
            printStr += DatabaseHelper.GetShoppingCartProductInfoHTML(productId);
        }
        return printStr;
    }

    public static string GetShoppingCartProductInfoHTML(string productId)
    {
        string sql = "SELECT * FROM Products WHERE Id='" + productId + "'";
        DataTable dt = DAL.ExecuteDataTable(sql);
        string printStr = "";
        foreach (DataRow row in dt.Rows)
        {
            string Image = row["Image"].ToString();
            string id = row["Id"].ToString();
            string ModelName = row["ModelName"].ToString();
            string CompanyName = row["CompanyName"].ToString();
            string Price = row["Price"].ToString();

            printStr += "<tr>";
            printStr += "<td><img class='Img' src='" + Image + "'/></td>";
            printStr += "<td class='name'><a href='Product.aspx?ProductID="+id+"'>" + CompanyName + "&nbsp " + ModelName + "</a></td>";
            printStr += "<td>" + Price + ".00$</td>";
            printStr += "<td>" + id + "</td>";
            printStr += "<td><a href='ShoppingCartDelete.aspx?ProductID=" + id + "'>&#10005</a></td>";
            printStr += "</tr>";

        }
        return printStr;
    }

    public static string GetAdminUserListHTML()
    {
        string sql = "SELECT * FROM Users";
        DataTable dt = DAL.ExecuteDataTable(sql);
        string printStr = "";
        foreach (DataRow row in dt.Rows)
        {
            string Id = row["Id"].ToString();
            string Username = row["Username"].ToString();
            string Password = row["Password"].ToString();
            string Admin = row["Admin"].ToString();
            string City = row["City"].ToString();
            string BirthYear = row["BirthYear"].ToString();
            string Gender = row["Gender"].ToString();
            string ProfilePicture = row["ProfilePicture"].ToString();
            string Registration = row["Registration"].ToString();
            string PhoneNumber = row["PhoneNumber"].ToString();
            string XP = row["XP"].ToString();
            string Email = row["Email"].ToString();


            printStr += "<tr>";
            printStr += "<td>" + Id + "</td>";
            printStr += "<td>" + Username + "</td>";
            printStr += "<td>" + Password + "</td>";
            printStr += "<td>" + Admin + "</td>";
            printStr += "<td>" + City + "</td>";
            printStr += "<td>" + BirthYear + "</td>";
            printStr += "<td>" + Gender + "</td>";
            printStr += "<td>" + ProfilePicture + "</td>";
            printStr += "<td>" + Registration + "</td>";
            printStr += "<td>" + PhoneNumber + "</td>";
            printStr += "<td>" + XP + "</td>";
            printStr += "<td>" + Email + "</td>";
            printStr += "<td><a href='UserLIstEdit.aspx?userID=" + Id + "'>Edit</a></td>";
            printStr += "<td><a href='UserLIstDelete.aspx?userID=" + Id + "'>&#10005</a></td>";
            printStr += "</tr>";

        }
        return printStr;
    }
}