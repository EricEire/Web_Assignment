using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace WebAssignment.Models
{
    public class CustomerLogin
    {
        [Required]
        [RegularExpression("[A-Za-z]+")]
        [Display(Name = "User Name")]
        public string Username { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [StringLength(20, ErrorMessage = "Password must be 5 to 20 characters long", MinimumLength = 5)]
        public string Password { get; set; }

        [Required]
        [Compare("Password")]
        [Display(Name = "Confirm Password")]
        public string ConfirmPassword { get; set; }


    }
}