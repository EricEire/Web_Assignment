using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class MensShoesController : Controller
    {
        // GET: MensShoes
        public ActionResult Index()
        {
            DAO dao = new DAO();

            List<Shoes> shoeList = dao.showShoes();
            return View(shoeList);
        }
    }
}