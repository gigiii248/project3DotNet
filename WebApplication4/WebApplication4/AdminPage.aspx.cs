using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using static WebApplication4.traits;

namespace WebApplication4
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlDataSource1.ConnectionString = traits.CODB;
            
        }
    }
}