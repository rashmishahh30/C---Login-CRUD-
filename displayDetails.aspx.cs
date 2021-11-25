using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudApplication1
{
    public partial class displayDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            displayName.InnerHtml = Request.Cookies["userInfo"]["Name"].ToString();
            displayEmail.InnerHtml = Request.Cookies["userInfo"]["Email"].ToString();
          
        }
    }
}