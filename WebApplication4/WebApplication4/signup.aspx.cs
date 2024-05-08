using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using static WebApplication4.traits;

namespace WebApplication4
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(traits.CODB);

        protected void Page_Load(object sender, EventArgs e)
        {
           con.Open();
        }

        protected void Button1Clicked(object sender, EventArgs e)
        {
          bool   ch_firstName   = false;
          bool   ch_secName     = false;
          bool   ch_email       = false;
          bool   ch_gn_male     = false;
          bool   ch_gn_fmale    = false;
          bool   ch_password    = false;

            

                string    Gender      = "Female";

            if (firstName.Text.ToString() == "")
                firstName.Attributes.Add("class", "border-error");
            else        
                ch_firstName = true;


            if (secName.Text.ToString() == "")
                secName.Attributes.Add("class", "border-error");
            else
                ch_secName = true;


            if (email.Text.ToString() == "")
                email.Attributes.Add("class", "border-error");
            else
                ch_email = true;


            if (password.Text.ToString() == "")
                password.Attributes.Add("class", "border-error");
            else
                ch_password = true;



            if (Male.Checked == false  && Female.Checked== false)
            {
                Male.Attributes.Add("class", "border-error");
                Female.Attributes.Add("class", "border-error");
                lbl_female.Attributes.Add("class", "label-error");
                lbl_male.Attributes.Add("class", "label-error");

            }

            


            if (Male.Checked == true)
            {
                Gender = "Male";
                ch_gn_male = true;
                
            }

            if (Female.Checked == true)
            {
            
                ch_gn_fmale = true;

            }





            if (ch_firstName && ch_secName && ch_email && ch_password && (ch_gn_fmale || ch_gn_male))
            {
                SqlCommand cmd = new SqlCommand("insert into Users (firstname,secname, role, email, password, gender) values (@firstname , @secname, 'user', @email, @password, @gender)", con);

                cmd.Parameters.AddWithValue("@firstname", firstName.Text.ToString());
                cmd.Parameters.AddWithValue("@secname"  , secName.Text.ToString());
                cmd.Parameters.AddWithValue("@email"    , email.Text.ToString());
                cmd.Parameters.AddWithValue("@password" , password.Text.ToString());
                cmd.Parameters.AddWithValue("@gender"   , Gender);
       
                cmd.ExecuteNonQuery();

                con.Close();
            }



        }





    }
}