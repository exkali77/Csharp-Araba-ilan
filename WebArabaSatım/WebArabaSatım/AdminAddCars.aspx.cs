using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebArabaSatım.Class;

namespace WebArabaSatım
{
    public partial class AdminAddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {
                SqlCommand commandList = new SqlCommand("Select *from TebalCar where CarConfirmation=@pcon",SQLConntentClass.sqlConnection);
                SQLConntentClass.checkSqlConnetion();
                commandList.Parameters.AddWithValue("@pcon", false);
                SqlDataReader dr = commandList.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                dr.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");


            }

        }
    }
}