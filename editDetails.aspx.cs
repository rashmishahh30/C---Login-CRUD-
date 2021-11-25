using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudApplication1
{
    public partial class editDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           editName.Value = Request.Cookies["userInfo"]["Name"].ToString();
           editEmail.Value = Request.Cookies["userInfo"]["Email"].ToString();
        }
    }
}