using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAssignment.Models
{
    public class Product
    {
        public string ProductId { get; set; }
        public string ProductType { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public decimal ProductPricePerUnit { get; set; }
        public decimal TotalPrice { get; set; } //addbe by Eg
        public int ProductQuantity { get; set; }
        public string ProductSize { get; set; }
        public string ProductColour { get; set; }
        public byte[] ProductImage { get; set; }

        public Product() { }

        public Product(string productId,string productType, string productName, string productDescription, decimal productPricePerUnit, decimal totalPrice, int productQuantity,
           string productSize, string productColour, byte[] productImage)
        {
            ProductId = productId;
            ProductType = productType;
            ProductName = productName;
            ProductDescription = productDescription;
            ProductPricePerUnit = productPricePerUnit;
            TotalPrice = totalPrice;
            ProductQuantity = productQuantity;
            ProductSize = productSize;
            ProductColour = productColour;
            ProductImage = productImage;
        }

    }
}