using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class ProductController : Controller
    {
        DAO dao = new DAO();
        // GET: Product
        public ActionResult Apparel()
        {
            List<int> quantityList = new List<int>() { 0, 1, 2, 3, 4, 5 };
            ViewBag.Quantity = quantityList;

            string apparelcode = "AP"; 
            List<Product> Apparellist = dao.ShowAllProducts(apparelcode);
            //List<Product> ProductList; /*= dao.showProducts();*/
            return View(Apparellist);

           
            
        }
    }
}