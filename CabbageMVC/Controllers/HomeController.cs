using System;
using System.Collections.Generic;
using System.Linq;
using CabbageMVC.Data;
using System.Web.Mvc;
using CabbageMVC.Models;
using System.Diagnostics;

namespace CabbageMVC.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(Order order)
        {

            using (OrdersContext context = new OrdersContext())
            {
                
                Order newOrder = new Order()
                {
                    Name = order.Name,
                    Phone = order.Phone,
                    Email = order.Email,
                    Address = order.Address,
                    BoxType = order.BoxType,
                    Sex = order.Sex,
                    NumDays = order.NumDays,
                    Comment = order.Comment
                };
                context.OrdersMVC.Add( newOrder);

                try
                {

                    context.SaveChanges();

                }
                catch (Exception ex)
                {
                    Debug.WriteLine("{0}", ex.Message);
                }
            }

            Debug.WriteLine("{0}|{1}|{2}|", order.Name, order.Phone, order.Address);
            return View();
        }
    }
}