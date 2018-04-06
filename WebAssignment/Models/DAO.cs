﻿using System;
using System.Collections.Generic;
using System.Data;
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

        public List<Shirts> showShirts()
        {
            List<Shirts> shirtList = new List<Shirts>();
            Connection();
            SqlDataReader reader;
            //Creating an instance of SqlCommand 
            SqlCommand cmd;
            //Intialising SqlCommand
            cmd = new SqlCommand("uspShowAllShirts", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Shirts shirt = new Shirts();
                    shirt.ProductId = reader["ShirtID"].ToString();
                    shirt.ProductName = reader["ShirtName"].ToString();
                    shirt.ProductDescription = reader["ShirtDescription"].ToString();
                    shirt.ProductPricePerUnit = decimal.Parse(reader["ShirtPricePerUnit"].ToString());
                    shirt.ProductQuantity = int.Parse(reader["ShirtQuantity"].ToString());
                    shirt.ProductSize = reader["ShirtSize"].ToString();
                    shirt.ProductColour = reader["ShirtColour"].ToString();
                    shirt.ShirtImage = (byte[])reader["ShirtImage"];
                    shirtList.Add(shirt);
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

            return shirtList;
        }

        public List<Trousers> showTrousers()
        {
            List<Trousers> trousersList = new List<Trousers>();
            Connection();
            SqlDataReader reader;
            //Creating an instance of SqlCommand 
            SqlCommand cmd;
            //Intialising SqlCommand
            cmd = new SqlCommand("uspShowAllTrousers", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Trousers trousers = new Trousers();
                    trousers.ProductId = reader["TrousersID"].ToString();
                    trousers.ProductName = reader["TrousersName"].ToString();
                    trousers.ProductDescription = reader["TrousersDescription"].ToString();
                    trousers.ProductPricePerUnit = decimal.Parse(reader["TrousersPricePerUnit"].ToString());
                    trousers.ProductQuantity = int.Parse(reader["TrousersQuantity"].ToString());
                    trousers.ProductSize = reader["TrousersSize"].ToString();
                    trousers.ProductColour = reader["TrouserColour"].ToString();
                    trousers.TrouserImage = (byte[])reader["TrouserImage"];
                    trousersList.Add(trousers);
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

            return trousersList;
        }


        public List<Tops> showTops()
        {
            List<Tops> topsList = new List<Tops>();
            Connection();
            SqlDataReader reader;
            //Creating an instance of SqlCommand 
            SqlCommand cmd;
            //Intialising SqlCommand
            cmd = new SqlCommand("uspShowAllTops", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Tops top = new Tops();
                    top.ProductId = reader["TopID"].ToString();
                    top.ProductName = reader["TopName"].ToString();
                    top.ProductDescription = reader["TopDescription"].ToString();
                    top.ProductPricePerUnit = decimal.Parse(reader["TopPricePerUnit"].ToString());
                    top.ProductQuantity = int.Parse(reader["TopQuantity"].ToString());
                    top.ProductSize = reader["TopSize"].ToString();
                    top.ProductColour = reader["TopColour"].ToString();
                    top.TopImage = (byte[])reader["TopImage"];
                    topsList.Add(top);
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

            return topsList;
        }

        public List<Shoes> showShoes()
        {
            List<Shoes> shoeList = new List<Shoes>();
            Connection();
            SqlDataReader reader;
            //Creating an instance of SqlCommand 
            SqlCommand cmd;
            //Intialising SqlCommand
            cmd = new SqlCommand("uspShowAllShoes", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Shoes shoe = new Shoes();
                    shoe.ProductId = reader["ShoeID"].ToString();
                    shoe.ProductName = reader["ShoeName"].ToString();
                    shoe.ProductDescription = reader["ShoeDescription"].ToString();
                    shoe.ProductPricePerUnit = decimal.Parse(reader["ShoePricePerUnit"].ToString());
                    shoe.ProductQuantity = int.Parse(reader["ShoeQuantity"].ToString());
                    shoe.ProductSize = reader["ShoeSize"].ToString();
                    shoe.ProductColour = reader["ShoeColour"].ToString();
                    shoe.ShoeImage = (byte[])reader["ShoeImage"];
                    shoeList.Add(shoe);
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

            return shoeList;
        }

        #region Customer
        public int InsertCustomer(CustomerLogin customer)
        {
            int count = 0;
            string password;
            SqlCommand cmd = new SqlCommand("uspInsertCustomer", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", customer.FirstName);
            cmd.Parameters.AddWithValue("@Firstname", customer.FirstName);
            cmd.Parameters.AddWithValue("@Lastname", customer.LastName);
            cmd.Parameters.AddWithValue("@Email", customer.Email);
            cmd.Parameters.AddWithValue("@Pass", customer.Password);
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
