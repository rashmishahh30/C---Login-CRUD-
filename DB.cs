using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudApplication1
{
    public class DB
    {
        static public string DatabaseConnString()
        {
            string ConnStr = (string)System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
            return ConnStr;
        }
    }
}