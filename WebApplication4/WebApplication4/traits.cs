using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.WebSockets;


namespace WebApplication4
{
    public class traits
    {
       // for hatem

        public static string CODB = "Data Source=DESKTOP-VSUOIB8;Initial Catalog=anime;Integrated Security=True;";

        public  static SqlConnection con = new SqlConnection(CODB);


        
        // ===================================================


        // for gigiiii

        // public static string CODB = "Data Source=GIHAN\\SQLEXPRESS;Initial Catalog=anime;Integrated Security=True;";
        public  bool IsAdmin(int id = 0 )
        {

           traits.con.Open();

            if (id != 0)
            {
                SqlCommand cmd = new SqlCommand("select * from Users where id = " + id , con);

                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())
                {
                  
                    
                    if (rd.GetValue(3).ToString() == "Admin")
                    {
                        return true;
                    }

                    
                }





            }

            return false;

        }


    }


}