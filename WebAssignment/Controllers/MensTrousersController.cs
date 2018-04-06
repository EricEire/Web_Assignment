using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class MensTrousersController : Controller
    {
        // GET: MensTrousers
        public ActionResult Index()
        {
            DAO dao = new DAO();

            List<Trousers> trouserList = dao.showTrousers();

            return View();
        }
    }
}