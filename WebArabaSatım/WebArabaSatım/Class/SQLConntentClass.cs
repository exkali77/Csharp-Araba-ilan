using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WebArabaSatım.Class
{
    public class SQLConntentClass
    {
        public static SqlConnection sqlConnection = new SqlConnection("Data Source=DESKTOP-EASQMRG\\SQLEXPRESS;Initial Catalog=arabaalımsatım;Integrated Security=True");
        public static void checkSqlConnetion(){
            if (sqlConnection.State==System.Data.ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
            else
            {


            }
        
        
        }
    }
}