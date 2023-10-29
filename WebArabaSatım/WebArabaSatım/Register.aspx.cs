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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {

            SqlCommand commandRegister = new SqlCommand("Insert into TabelUser (UserMail,UserPassword) values (@pmail,@ppassword)", SQLConntentClass.sqlConnection);
            SQLConntentClass.checkSqlConnetion();
            string newpassword = ShsConvert.Camputsha256(txtpass.Text);
            commandRegister.Parameters.AddWithValue("@pmail",txtemail.Text);
            commandRegister.Parameters.AddWithValue("@ppassword", newpassword);
            commandRegister.ExecuteNonQuery();
        }

        protected void btnforget_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginList.aspx");
        }
    }
}