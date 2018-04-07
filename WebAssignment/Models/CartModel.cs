﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAssignment.Models
{
    public class CartModel
    {
        public string ItemId { get; set; }
        public string Title { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
        public decimal TotalPrice { get; set; }
    }
}