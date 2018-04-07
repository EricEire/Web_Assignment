using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAssignment.Models
{
    public class Cart
    {
        public int CartId { get; set; } //Order
        public string ProductType { get; set; }
        public int QuantityOfItems { get; set; }
        public decimal Price {get;set;}
        public decimal TotalPrice { get; set; }
        public System.DateTime DateCreated { get; set; }

        public Cart() { }

        public Cart(int cartId, string productType, int quantityOfItems, decimal price, decimal totalPrice)
        {
            CartId = cartId;
            ProductType = productType;
            QuantityOfItems = quantityOfItems;
            Price = price;
            TotalPrice = totalPrice;
        }

        //public decimal GetTotalPrice()
        //{
        //    return TotalPrice;
        //}

    }
}