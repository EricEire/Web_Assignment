using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Helpers;

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
        public List<Jackets> showJackets()
        {
            List<Jackets> jacketList = new List<Jackets>();
            Connection();
            SqlDataReader reader;
            //Creating an instance of SqlCommand 
            SqlCommand cmd;
            //Intialising SqlCommand
            cmd = new SqlCommand("uspShowAllJackets", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Jackets jacket = new Jackets();
                    jacket.ProductId = reader["JacketID"].ToString();
                    jacket.ProductName = reader["JacketName"].ToString();
                    jacket.ProductDescription = reader["JacketDescription"].ToString();
                    jacket.ProductPricePerUnit = decimal.Parse(reader["JacketPricePerUnit"].ToString());
                    jacket.ProductQuantity = int.Parse(reader["JacketQuantity"].ToString());
                    jacket.ProductSize = reader["JacketSize"].ToString();
                    jacket.ProductColour = reader["JacketColour"].ToString();
                    jacket.JacketImage = (byte[])reader["JacketImage"];
                    jacketList.Add(jacket);
                }
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            return jacketList;
        }

      

        public List<Apparel> showApparel()
        {
            List<Apparel> apparellist = new List<Apparel>();
            Connection();
            SqlDataReader reader;
            //Creating an instance of SqlCommand 
            SqlCommand cmd;
            //Intialising SqlCommand
            cmd = new SqlCommand("uspShowAllApparel", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Apparel apparel = new Apparel();
                    apparel.ProductId = reader["ApparelID"].ToString();
                    apparel.ProductName = reader["ApparelName"].ToString();
                    apparel.ProductDescription = reader["ApparelDescription"].ToString();
                    apparel.ProductPricePerUnit = decimal.Parse(reader["ApparelPricePerUnit"].ToString());
                    apparel.ProductQuantity = int.Parse(reader["ApparelQuantity"].ToString());
                    apparel.ProductSize = reader["ApparelSize"].ToString();
                    apparel.ProductColour = reader["ApparelColour"].ToString();
                    apparel.ApparelImage = (byte[])reader["ApparelImage"];
                    apparellist.Add(apparel);
                }
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            finally
            {
                conn.Close();
            }

            return apparellist;
        }

        
        #region Customer
            public int InsertCustomer(CustomerLogin customer)
            {
            int count = 0;
            string password;
            Connection();
            SqlCommand cmd = new SqlCommand("uspInsertCustomer", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", customer.Username);
            cmd.Parameters.AddWithValue("@Firstname", customer.FirstName);
            cmd.Parameters.AddWithValue("@Lastname", customer.LastName);
            cmd.Parameters.AddWithValue("@Email", customer.Email);
            password = Crypto.HashPassword(customer.ConfirmPassword);
            cmd.Parameters.AddWithValue("@Pass", password);
            try
            {
                conn.Open();
                count = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                message = ex.Message;
            }
            finally
            {
                conn.Close();
            }
            return count;
        }
        #endregion
    }



}
