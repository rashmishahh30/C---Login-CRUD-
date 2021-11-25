using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using MySql.Data.MySqlClient;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
using System.Data;
using Ubiety.Dns.Core;

namespace CrudApplication1
{
  
    [WebService(Namespace = "https://localhost:44364/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [ScriptService]
    public class UserDetails : System.Web.Services.WebService
    {

        [WebMethod]
        public void Save(string userName, string userEmail, string userPswd)
        {

            using (MySqlConnection con = new MySqlConnection(DB.DatabaseConnString()))
            {
                con.Open();

                string query = "insert into usersignup (Name,Email,Password)values(@name,@email,@password)";
                // MySqlDataAdapter da = new MySqlDataAdapter(query, con);
                MySqlCommand cmd = new MySqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", userName);
                cmd.Parameters.AddWithValue("@email", userEmail);
                cmd.Parameters.AddWithValue("@password", userPswd);
                
                cmd.ExecuteNonQuery();

            }

        }

        [WebMethod]
        public string displayDetails(string SigninEmail, string SigninPswd)
        {
                
                using (MySqlConnection con = new MySqlConnection(DB.DatabaseConnString()))
                {
                    con.Open();

                    string query = "select * from usersignup where Email= '" + SigninEmail + "' and Password=  '" + SigninPswd + "'";
                    MySqlCommand cmd = new MySqlCommand(query, con);
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                    HttpCookie userInfo = new HttpCookie("userInfo");
                    userInfo["Name"] = dt.Rows[0]["Name"].ToString();
                    userInfo["Email"] = dt.Rows[0]["Email"].ToString();

                    userInfo.Expires = DateTime.Now.AddDays(1d);
                    HttpContext.Current.Response.Cookies.Add(userInfo);
                    
                    }
                MySqlDataReader dr = cmd.ExecuteReader();
                string Username = "";
                while (dr.Read())
                {

                    Username = dr["Name"].ToString();

                }
                return Username;

            }

        }

        [WebMethod]
        public void LogoutUser()
        {
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["userInfo"] = string.Empty;
            HttpContext.Current.Response.Cookies.Add(userInfo);


        }

        [WebMethod]
        public void UpdateDetails(String UserName, String Email, String password, String CurPswd)
        {
            UserDetails uds = new UserDetails();
            using (MySqlConnection con = new MySqlConnection(DB.DatabaseConnString()))
            {
                con.Open();

                string query = "UPDATE usersignup SET Name=@UserName, Email=@Email,Password=@password  Where Password='" + CurPswd + "' ";
                
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Parameters.AddWithValue("@UserName", UserName);
                if (password == "")
                {
                    cmd.Parameters.AddWithValue("@password", CurPswd);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@password", password);
                }
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.ExecuteNonQuery();
                HttpCookie userInfo = new HttpCookie("userInfo");
                userInfo["Name"] = UserName;
                userInfo["Email"] = Email;
                HttpContext.Current.Response.Cookies.Add(userInfo);

            }

        }
    }
}
