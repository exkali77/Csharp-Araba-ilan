using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using WebArabaSatım.Class;

namespace WebArabaSatım
{
    public partial class AddCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Page.IsPostBack == false)
                {
                    SqlCommand commandListBrands = new SqlCommand("Select *from TebalBrand", SQLConntentClass.sqlConnection);
                    SQLConntentClass.checkSqlConnetion();
                    SqlDataReader dr = commandListBrands.ExecuteReader();
                    Combobox.DataTextField = "BrandName";
                    Combobox.DataSource = dr;
                    Combobox.DataValueField = "BrabdID";
                    Combobox.DataBind();
                    dr.Close();
                }
            


        }
    

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand commandadd = new SqlCommand("Insert into TebalCar(CarModel,CarBrandID,CarFuelType,CarDexcription,CarContact,CarSeller,CarPhoto,CarPrice) Values (@pmodel,@pBrand,@pfuel,@pdes,@pcontact,@pseller,@pphoto,@pprice)",SQLConntentClass.sqlConnection);
            SQLConntentClass.checkSqlConnetion();
            commandadd.Parameters.AddWithValue("@pmodel", TbModel.Text);
            commandadd.Parameters.AddWithValue("@pBrand", Convert.ToInt32(Combobox.SelectedValue));
            commandadd.Parameters.AddWithValue("@pfuel", TbFuel.Text);
            commandadd.Parameters.AddWithValue("@pdes", TbDescription.Text);
            commandadd.Parameters.AddWithValue("@pcontact", TbContact.Text);
            commandadd.Parameters.AddWithValue("@pseller", TbSeller.Text);
            commandadd.Parameters.AddWithValue("@pphoto", TbPhoto.Text);
            commandadd.Parameters.AddWithValue("@pprice", TbPrice.Text);
            commandadd.ExecuteNonQuery();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TbModel_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TbPhoto_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TbDescription_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TbSeller0_TextChanged(object sender, EventArgs e)
        {

        }
    }
}