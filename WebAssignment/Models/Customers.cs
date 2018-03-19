using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAssignment.Models
{

    public class Customer
    {
        public string CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string CustomerAddress { get; set; }
        public string CustomerEmail { get; set; }
        public string CustomerPassword { get; set; }

        public Customer() { }
        public Customer(string customerId, string customerName, string customerAddress, string customerEmail, string customerPassword)
        {
            CustomerId = customerId;
            CustomerName = customerName;
            CustomerAddress = customerAddress;
            CustomerEmail = customerEmail;
            CustomerPassword = customerPassword;
        }
    }

}
