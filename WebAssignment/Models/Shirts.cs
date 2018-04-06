using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebAssignment.Models
{
    public class Shirts
    {
        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public decimal ProductPricePerUnit { get; set; }
        public int ProductQuantity { get; set; }
        public string ProductSize { get; set; }
        public string ProductColour { get; set; }
        public byte[] ShirtImage { get; set; }

        public Shirts() { }

        public Shirts(string productId, string productName, string productDescription, decimal productPricePerUnit, int productQuantity,
           string productSize, string productColour, byte[] shirtImage)
        {
            ProductId = productId;
            ProductName = productName;
            ProductDescription = productDescription;
            ProductPricePerUnit = productPricePerUnit;
            ProductQuantity = productQuantity;
            ProductSize = productSize;
            ProductColour = productColour;
            ShirtImage = shirtImage;
        }


    }
}