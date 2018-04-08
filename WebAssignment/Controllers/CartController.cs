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
        static List<Product> selectedProducts = new List<Product>(); //Item Being Purchased
        static List<CartModel> selectedItems = new List<CartModel>(); //ITEM IN THE CART
        
        decimal totalPrice = 0.0m;
        decimal totalPriceProduct = 0.0m;

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

            for (int i = 0; i < selectedItems.Count && found == false; i++)
            {
                //if already in the selected items
                if (selectedItems[i].ItemId == form["productid"])
                {
                    selectedItems[i].Quantity = selectedItems[i].Quantity + int.Parse(form["quantity"]);
                    selectedItems[i].TotalPrice = selectedItems[i].TotalPrice * selectedItems[i].Quantity;
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
            CartModel cartItem; //ITEM IN CART

            for (int i = 0; i < selectedItems.Count && found == false; i++)
            {

                if (selectedItems[i].ItemId == form["id"] || selectedItems[i].ItemId == form["code"])
                {
                    cartItem = selectedItems[i];
                    if (cartItem.Quantity > 1)
                    {
                        cartItem.Quantity = cartItem.Quantity - 1;
                        cartItem.TotalPrice = cartItem.TotalPrice - cartItem.Price;
                    }
                    else
                    {
                        selectedItems.Remove(cartItem);
                    }
                    found = true;
                }
            }
            foreach (var item1 in selectedItems)
            {
                totalPrice = totalPrice + item1.TotalPrice;
            }
            ViewBag.TransactionPrice = totalPrice;

            return RedirectToAction("ViewCart");
        }
        /******************************************************************Clear All Cart***************************************************************/
        public ActionResult ClearAll()
        {
            selectedProducts.Clear();
            selectedItems.Clear();
            return RedirectToAction("ViewCart");
        }
        /******************************************************************View All Cart***************************************************************/
        public ActionResult ViewCart()
        {
            foreach (Product product in selectedProducts)
            {
                CartModel cartItem = new CartModel();
                totalPriceProduct = totalPriceProduct + product.ProductQuantity * product.ProductPricePerUnit;
                cartItem.ItemId = product.ProductId;
                cartItem.Title = product.ProductName;
                cartItem.Quantity = product.ProductQuantity;
                cartItem.Price = product.ProductPricePerUnit;
                cartItem.TotalPrice = totalPriceProduct;
                if (!selectedItems.Contains(cartItem))
                    selectedItems.Add(cartItem);
            }

            foreach (var item in selectedItems)
            {
                totalPrice = totalPrice + item.TotalPrice;
            }
            ViewBag.TransactionPrice = totalPrice;
            //To remove from the selected books to avoid adding them in selected items again and again
            selectedProducts.Clear();
            return View(selectedItems);
        }
        /******************************************************************CheckOut***************************************************************/
        public ActionResult CheckOut()
        {
            int count = 0;
            if (selectedItems.Count > 0)
            {
                foreach (CartModel item in selectedItems)
                {
                    totalPrice = totalPrice + item.TotalPrice;

                }
            }

            count = dao.AddTransaction(Session.SessionID + count, DateTime.Now, totalPrice, Session["email"].ToString());

            if (selectedItems.Count > 0)
            {
                foreach (CartModel item in selectedItems)
                {

                    dao.AddTransactionItem(Session.SessionID + count, item);
                }
            }
            count++;
            Session.Clear();
            //Session.Abandon();

            return View();
        }
    }
}