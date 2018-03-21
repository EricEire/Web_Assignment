using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAssignment.Models;

namespace WebAssignment.Controllers
{
    public class MensApparelController : Controller
    {
        // GET: MensApparel
        public ActionResult Index()
        {
            //Generic list passed to apparel page to test display of every item. List so that each page can be passed from backend list of items which are available and can be modfied.
            List<SaleItem> Apparellist = new List<SaleItem>();
            Apparellist.Add(new SaleItem("Black Beanie", 10m, "Lovely Black Beanie", "Beanie_Black_1.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Black Beanie",10m, "Aren't they all lovely Beanies", "Beanie_Black_2.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Grey Beanie", 10m, "Just like the Black Beanie, but grey", "Beanie_Grey_1.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Yellow Beanie", 12m, "TEXT", "Beanie_Yellow_1.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Black Belt", 27m, "Premium Leather", "Belt_Black_1.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Brown Belt", 27m, "Premium Leather", "Belt_Brown_1.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Black Belt", 27m, "Not for Kung Fu", "Belt_Black_2.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Brown Belt", 27m, "Not for Kung Fu, but in brown", "Belt_Brown_2.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Black Tie", 24m, "For Those Black Tie Events", "Tie_Black.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Blue Tie", 24m, "Blue Tie", "Tie_Blue.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Burgundy Tie", 24m, "I'm Tie Burgundy", "Tie_Burgandy.jpg", ItemType.Apparel));
            Apparellist.Add(new SaleItem("Silver Tie", 24m, "Silver Tie", "Tie_Silver.jpg", ItemType.Apparel));
            //Code for adding new item
            //Apparellist.Add(new SaleItem("", m, "", "", ItemType.Apparel));
            
            return View(Apparellist);
        }
    }

}