using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Helpers;
using System.Xml;
using System.IO;

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

        public List<Product> ShowAllProducts(string clothescode)
        {
            List<Product> productList = new List<Product>();
            Connection();
            SqlDataReader reader;
            SqlCommand cmd;
            switch(clothescode)
            {//Code to perform particular database query specific to each item type
                case "AP":
                    cmd = new SqlCommand("uspShowAllApparel", conn);
                    break;
                case "JA":
                    cmd = new SqlCommand("uspShowAllJackets", conn);
                    break;
                case "SH":
                    cmd = new SqlCommand("uspShowAllShirts", conn);
                    break;
                case "FW":
                    cmd = new SqlCommand("uspShowAllShoes", conn);
                    break;
                case "TO":
                    cmd = new SqlCommand("uspShowAllTops", conn);
                    break;
                case "TR":
                    cmd = new SqlCommand("uspShowAllTrousers", conn);
                    break;
                default:
                    cmd = new SqlCommand("uspShowAllProducts", conn);
                    break;
            }
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while(reader.Read())
                {
                    Product product = new Product();
                    product.ProductId = reader["ProductID"].ToString();
                    product.ProductType = reader["ProductType"].ToString();
                    product.ProductName = reader["ProductName"].ToString();
                    product.ProductDescription = reader["ProductDescription"].ToString();
                    product.ProductPricePerUnit = decimal.Parse(reader["ProductPricePerUnit"].ToString());
                    product.ProductQuantity = int.Parse(reader["ProductQuantity"].ToString());
                    product.ProductSize = reader["ProductSize"].ToString();
                    product.ProductColour = reader["ProductColour"].ToString();
                    product.ProductImage = (byte[])reader["ProductImage"];
                    productList.Add(product);
                }
            }catch(Exception ex)
            {
                message = ex.Message;
            }
            finally
            {
                conn.Close();
            }
            return productList;
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


        /*************************************************************PRODUCT****************************************************************/
        public List<Product> showProduct()
        {
            List<Product> productList = new List<Product>();
            Connection();
            SqlDataReader reader;
            //Creating an instance of SqlCommand 
            SqlCommand cmd;
            //Intialising SqlCommand
            cmd = new SqlCommand("uspShowAllProduct", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Product product = new Product();
                    product.ProductId = reader["ProductID"].ToString();
                    product.ProductName = reader["ProductName"].ToString();
                    product.ProductDescription = reader["ProductDescription"].ToString();
                    product.ProductPricePerUnit = decimal.Parse(reader["ProductPricePerUnit"].ToString());
                    product.ProductQuantity = int.Parse(reader["ProductQuantity"].ToString());
                    product.ProductSize = reader["ProductSize"].ToString();
                    product.ProductColour = reader["ProductColour"].ToString();
                    product.ProductImage = (byte[])reader["ProductImage"];
                    productList.Add(product);
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

            return productList;
        }

        /*************************************************************Transaction****************************************************************/
        public int AddTransaction(string transactionId, DateTime date, decimal totalPrice, string email)
        {
            int count = 0;
            SqlCommand cmd = new SqlCommand("InsertTransactionTable", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", transactionId);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@price", totalPrice);
            cmd.Parameters.AddWithValue("@email", email);
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
        public int AddTransactionItem(string transactionId, CartModel cartItem)
        {
            int count = 0;
            SqlCommand cmd = new SqlCommand("uspTransactionItem", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tranId", transactionId);
            cmd.Parameters.AddWithValue("@ItemId", cartItem.ItemId);
            cmd.Parameters.AddWithValue("@quantity", cartItem.Quantity);

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
            password = Crypto.HashPassword(customer.Password);
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
        public string CheckLogin(CustomerLogin user)
        {
            string password, username=null;
            SqlDataReader reader;
            Connection();
            SqlCommand cmd = new SqlCommand("uspLoginCustomer", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user", user.Username);
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    password = reader["Pass"].ToString();
                    if (Crypto.VerifyHashedPassword(password, user.Password))
                    {
                        username = reader["Username"].ToString();
                    }
                    else
                    {
                        message = "Incorrect password entered";
                    }
                }
            }catch(SqlException ex)
            {
                message = ex.Message;
            }catch(FormatException ex)
            {
                message = ex.Message;
            }
            finally
            {
                conn.Close();
            }
            return username;

        }
        #endregion
    }



}
