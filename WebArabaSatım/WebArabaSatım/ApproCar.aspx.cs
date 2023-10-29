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
    public partial class ApproCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selctID = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand commandApprov = new SqlCommand("Update TebalCar set CarConfirmation=@pcon where CarID=@Pid", SQLConntentClass.sqlConnection);
            SQLConntentClass.checkSqlConnetion();
            commandApprov.Parameters.AddWithValue("@pcon", true);
            commandApprov.Parameters.AddWithValue("@pid", selctID);
            commandApprov.ExecuteNonQuery();
            Response.Redirect("AdminAddCars.aspx");

        }
    }
}