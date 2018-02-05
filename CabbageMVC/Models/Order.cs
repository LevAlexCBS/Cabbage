using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Migrations.Model;

namespace CabbageMVC.Models
{
    public class Order
    {
        public Order()
        {
            this.Date = DateTime.Now;
        }
        
        public int Id { get; set; }
        [Required(ErrorMessage = "Пожалуйста, введите свое имя")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Пожалуйста, введите свой номер телефона")]
        [RegularExpression(@"^\+38 \(\d{3}\) \d{3}-\d{2}\d{2}$")]
        public string Phone { get; set; }
        [Required(ErrorMessage = "Пожалуйста, введите првильный email")]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*")]
        public string Email { get; set; }
        public Gender Sex { get; set; }

        public int NumDays { get; set; }
        public BoxTypes BoxType { get; set; }
        [Required(ErrorMessage = "Пожалуйста, введите адрес доставки")]
        public string Address { get; set; }
        public string Comment { get; set; }
       
    
        public DateTime Date { get; set; }
    }
}