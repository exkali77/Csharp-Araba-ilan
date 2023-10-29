using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebArabaSatım.Class;
using System.Data.SqlClient;

namespace WebArabaSatım
{
    public partial class HomCntac : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void TbName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TbMail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Tbmessge_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Messeg_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("Insert into TabelContact (ContactMail,ContactName,ContactMessage) Values (@pmeil,@pname,@pmessge)", SQLConntentClass.sqlConnection);
            SQLConntentClass.checkSqlConnetion();
            commandAdd.Parameters.AddWithValue("@pmeil", TbMail.Text);
            commandAdd.Parameters.AddWithValue("@pname", TbName.Text);
            commandAdd.Parameters.AddWithValue("@pmessge", Tbmessge.Text);
            commandAdd.ExecuteNonQuery();
        }

        protected void Tbmessge_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}