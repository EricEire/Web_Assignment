using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAssignment.Models
{
    public class SaleItem
    { //Model page with generic item which is based off HTML code for each page
        public string Title { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public string ItemImage { get; set; }
        public string ItemType { get; set; }

        public SaleItem() { }
        public SaleItem(string title, decimal price, string description, string itemimage, string itemtype)
        {
            Title = title;
            Price = price;
            Description = description;
            ItemImage = itemimage;
            ItemType = itemtype;
        }
    }
}