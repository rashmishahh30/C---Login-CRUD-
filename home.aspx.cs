using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace CrudApplication1
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayName();
        }


        public void DisplayName()
        {
            if (HttpContext.Current.Request.Cookies["userInfo"]["Name"] != null)
            {
                showName.InnerHtml = HttpContext.Current.Request.Cookies["userInfo"]["Name"].ToString();
                showImg.InnerHtml = "<img src= 'img/usericon.png' width= '20px' /> ";
                Login.Visible = false;
                Logout.Visible = true;
            }
            else
            {
                Login.Visible = true;
                Logout.Visible = false;

            }

        }
           [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static void DeleteAccount()
        {
            string UserName = HttpContext.Current.Request.Cookies["userInfo"]["Name"].ToString();

            using (MySqlConnection con = new MySqlConnection(DB.DatabaseConnString()))
            {
                con.Open();
                string query = "DELETE  from usersignup where Name = '" + UserName + "'";
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.ExecuteNonQuery();
                con.Close();
                HttpCookie userInfo = new HttpCookie("userInfo");
                userInfo["userInfo"] = string.Empty;
                HttpContext.Current.Response.Cookies.Add(userInfo);

            }

        }
    }
}