using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAssignment.Models
{
    public class Trousers
    {
        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public decimal ProductPricePerUnit { get; set; }
        public int ProductQuantity { get; set; }
        public string ProductSize { get; set; }
        public string ProductColour { get; set; }
        public byte[] TrouserImage { get; set; }

        public Trousers() { }

        public Trousers(string productId, string productName, string productDescription, decimal productPricePerUnit, int productQuantity,
           string productSize, string productColour, byte[] trouserImage)
        {
            ProductId = productId;
            ProductName = productName;
            ProductDescription = productDescription;
            ProductPricePerUnit = productPricePerUnit;
            ProductQuantity = productQuantity;
            ProductSize = productSize;
            ProductColour = productColour;
            TrouserImage = trouserImage;
        }
    }
}