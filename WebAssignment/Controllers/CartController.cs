using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class CartController : Controller
    {
        DAO dao = new DAO();
        static List<Product> selectedProducts = new List<Product>();

        decimal totalPrice = 0.0m;
        decimal totalPriceItem = 0.0m;

        /************************************************************************Get Cart**********************************************************************************/
        public ActionResult Index()
        {
            return View();
        }

        /********************************************************************** Add Item to Cart**********************************************************************************/
        [HttpPost]
        public ActionResult AddProduct(FormCollection form)
        {
            List<Product> product = dao.showProduct();
            bool found = false, found1 = false;

            for (int i = 0; i < selectedProducts.Count && found == false; i++)
            {
                //if already in the selected items
                if (selectedProducts[i].ProductId == form["productid"])
                {
                    selectedProducts[i].ProductQuantity = selectedProducts[i].ProductQuantity + int.Parse(form["quantity"]);
                    selectedProducts[i].TotalPrice = selectedProducts[i].ProductPricePerUnit * selectedProducts[i].ProductQuantity;
                    found = true;
                    found1 = true;
                }
            }

            for (int i = 0; i < product.Count && found1 == false; i++)
            {
                if (product[i].ProductId == form["productid"])
                {
                    product[i].ProductQuantity = int.Parse(form["quantity"]);
                    selectedProducts.Add(product[i]);
                    found1 = true;
                }
            }

            return RedirectToAction("ViewCart");
        }
        /******************************************************************Remove Item From Cart*****************************************************************************/
        [HttpPost]
        public ActionResult RemoveProduct(FormCollection form)
        {
            bool found = false;
            Product product;

            for (int i = 0; i < selectedProducts.Count && found == false; i++)
            {
                if (selectedProducts[i].ProductId == form["productid"] || selectedProducts[i].ProductId == form["code"])
                {
                    product = selectedProducts[i];
                    if (product.ProductQuantity > 1)
                    {
                        product.ProductQuantity = product.ProductQuantity - 1;
                        product.TotalPrice = product.TotalPrice - product.ProductPricePerUnit;
                    }
                    else
                    {
                        selectedProducts.Remove(product);
                    }
                    found = true;
                }
            }
            foreach (var product1 in selectedProducts)
            {
                totalPrice = totalPrice + product1.TotalPrice;
            }
            ViewBag.TransactionPrice = totalPrice;

            return RedirectToAction("ViewCart");
        }
        /******************************************************************Clear All Cart***************************************************************/
        public ActionResult ClearAll()
        {
            //selectedBooks.Clear();
            selectedProducts.Clear();
            return RedirectToAction("ViewCart");
        }
        /******************************************************************View All Cart***************************************************************/
        public ActionResult ViewCart()
        {
            foreach (var item in selectedProducts)
            {
                totalPrice = totalPrice + item.TotalPrice;
            }
            ViewBag.TransactionPrice = totalPrice;
            //To remove from the selected books to avoid adding them in selected items again and again
            selectedProducts.Clear();
            return View(selectedProducts);
        }
        /******************************************************************CheckOut***************************************************************/

    }
}