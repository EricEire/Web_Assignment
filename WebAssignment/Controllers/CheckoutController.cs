using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class CheckoutController : Controller
    {
        //GET: Checkout
        //Paypal
        public ActionResult Index()
        {
            return View();
        }

        //public ActionResult Success()
        //{
        //    ViewBag.result = PDTHolder.Success(Request.QueryString.Get("tx"));
        //    return View("Success");
        //}
    }
}