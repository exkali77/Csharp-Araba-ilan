using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using WebArabaSatım.Class;
using System.Data;

namespace WebArabaSatım
{
    public partial class Logins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 5;
        }

        protected void Btn_Click(object sender, EventArgs e)
        {      SqlCommand commandLogin = new SqlCommand("Select * from TabelUser where UserMail=@pmail and UserPassword=@ppass", SQLConntentClass.sqlConnection);
                SQLConntentClass.checkSqlConnetion();
                string shapass = ShsConvert.Camputsha256(txtpass.Text);
                commandLogin.Parameters.AddWithValue("@pmail", txtemail.Text);
                commandLogin.Parameters.AddWithValue("@ppass", shapass);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(commandLogin);
            da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (txtemail.Text == "admin")
                    {    

                        Session["IsUserMail"] = "admin";
                        Session["IsUserAdmin"] = true;
                        Response.Redirect("AdminAddCars.aspx");
                    }
                    else
                    {
                        Session["IsUserOnline"] = true;

                        Response.Redirect("HomLeyout.aspx");
                        Response.Write("Giriş Yapıldı");
                    }

                }
                else
                {
                    Response.Write("Şİfre veya Mail Yanlış");

                }
           
        }

        protected void Unnamed2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnforget_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginList.aspx");
        }
    }
}