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
    public partial class AdminMassegDelet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectID = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand commandDelet = new SqlCommand("Delete from TabelContact where ContactID=@pid", SQLConntentClass.sqlConnection);
            SQLConntentClass.checkSqlConnetion();
            commandDelet.Parameters.AddWithValue("@pid", selectID);
            commandDelet.ExecuteNonQuery();
            Response.Redirect("AdminContact.aspx");
        }
    }
}