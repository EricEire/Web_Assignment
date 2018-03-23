using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace WebAssignment.Models
{
    public class DAO
    {
        //sql connections and commands
        SqlConnection conn;
        public string message;

        public void Connection()
        {
            conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        }

       

    }
}