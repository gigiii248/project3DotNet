using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using static WebApplication4.traits;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class LogIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(traits.CODB);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            bool ch_email = false;
            bool ch_password = false;


            if (email.Text.ToString() == null)
            {
                email.Attributes.Add("class", "border-error");
            }
            else
            {
                ch_email = true;
            }


            if (password.Text.ToString() == null)
            {
                password.Attributes.Add("class", "border-error");
            }
            else
            {
                ch_password = true;
            }


            if(ch_email && ch_password)
            {
                SqlCommand cmd = new SqlCommand("Select * from Users where email " + email.Text.ToString());
                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())
                {
                    if (rd.GetValue(4).ToString() == email.Text.ToString()  &&  rd.GetValue(5).ToString()  ==  password.Text.ToString()  ) {

                        Session["id"] = rd.GetValue(0);
                    }
                }
            }
            else
            {
                
            }


            con.Close();
        }
    }
}