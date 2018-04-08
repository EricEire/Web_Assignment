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
            return View(Apparellist);

           
            
        }
        public ActionResult Tops()
        {
            string apparelcode = "TO";
            List<Product> Toplist = dao.ShowAllProducts(apparelcode);
            return View(Toplist);
        }
        public ActionResult Shirts()
        {
            string apparelcode = "SH";
            List<Product> Shirtlist = dao.ShowAllProducts(apparelcode);
            return View(Shirtlist);
        }
        public ActionResult Shoes()
        {
            string apparelcode = "FW";
            List<Product> Shoelist = dao.ShowAllProducts(apparelcode);
            return View(Shoelist);
        }
        public ActionResult Trousers()
        {
            string apparelcode = "TR";
            List<Product> Trouserlist = dao.ShowAllProducts(apparelcode);
            return View(Trouserlist);
        }
        public ActionResult Jackets()
        {
            string apparelcode = "JA";
            List<Product> Jacketlist = dao.ShowAllProducts(apparelcode);
            return View(Jacketlist);
        }
    }
}