using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using CabbageMVC.Models;

namespace CabbageMVC.Data
{
    public class OrdersContext : DbContext
    {
        static OrdersContext()
        {
            Database.SetInitializer<OrdersContext>(null);
        }
        public OrdersContext()
            : base("DB_Connection")
        {

        }
        public DbSet<Order> OrdersMVC { get; set; }


    }
}