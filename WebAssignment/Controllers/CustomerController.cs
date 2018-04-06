using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class CustomerController : Controller
    {
        DAO dao = new DAO();
        // GET: Customer
        public ActionResult Register()
        {
            return View("");
        }

        [HttpPost]
        public ActionResult Register(CustomerLogin customer)
        {
            int count = 0;
            if(ModelState.IsValid)
            {
                count = dao.InsertCustomer(customer);
                if (count == 1)
                    ViewBag.Status = "Account created succesfully";
                else ViewBag.Status = "Error!" + dao.message;
                return View("Status");
            }
            return View(customer);
        }
    }
}