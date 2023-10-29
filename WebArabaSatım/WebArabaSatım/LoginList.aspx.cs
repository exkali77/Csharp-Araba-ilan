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
    public partial class LoginList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand CommandList = new SqlCommand("Select  CarID,CarModel,CarBrandID,CarFuelType,CarDexcription,CarContact,CarSeller,CarPhoto,CarPrice,CarConfirmation,BrabdID,BrandName from TebalCar inner join TebalBrand on TebalCar.CarBrandID=TebalBrand.BrabdID where CarConfirmation=@pcon", SQLConntentClass.sqlConnection);
            SQLConntentClass.checkSqlConnetion();
            CommandList.Parameters.AddWithValue("@pcon", true);
            SqlDataReader dr = CommandList.ExecuteReader();
            DataList.DataSource = dr;
            DataList.DataBind();
            dr.Close();
        }

        protected void DataList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}