using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebAssignment.Models
{
    public class Jackets
    {
        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public decimal ProductPricePerUnit { get; set; }
        public int ProductQuantity { get; set; }
        public string ProductSize { get; set; }
        public string ProductColour { get; set; }
        public string JacketImage { get; set; }

        public Jackets() { }

        public Jackets(string productId, string productName, string productDescription, decimal productPricePerUnit, int productQuantity,
           string productSize, string productColour,string jacketImage)
        {
            ProductId = productId;
            ProductName = productName;
            ProductDescription = productDescription;
            ProductPricePerUnit = productPricePerUnit;
            ProductQuantity = productQuantity;
            ProductSize = productSize;
            ProductColour = productColour;
            JacketImage = jacketImage;
        }

        //ES 
        //public AddJacket()
        //{
        //    SqlCommand cmd = new SqlCommand();
        //    cmd = Sql
        //}

    }
}