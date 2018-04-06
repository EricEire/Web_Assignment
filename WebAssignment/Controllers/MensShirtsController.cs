using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class MensShirtsController : Controller
    {
        // GET: MensShirts
        public ActionResult Index()
        {
            DAO dao = new DAO();

            List<Shirts> shirtList = dao.showShirts();

            
            return View(shirtList);
        }
    }
}