//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Net.Mail;
//using System.Text;
//using System.Web;
//using System.IO;
//using CabbageMVC.Models;
//using System.Threading.Tasks;
//using HtmlAgilityPack;
//using SMSProject.Services;

//namespace CabbageMVC.Models
//{
//    public class NotifySender
//    {
//        Orders clientOrder;
//        public NotifySender(Orders order)
//        {
//            clientOrder = order;
//        }
//        private async Task<string> ReadHTML()
//        {
//            using (StreamReader reader = File.OpenText(HttpContext.Current.Server.MapPath("~/App_Data/mail.html")))
//            {
//                string fileText = await reader.ReadToEndAsync();
//                return fileText;
//            }

//        }

//        private async Task<string> GenerateMailBodyInfo()
//        {
//            string body = "<strong>Имя: </strong>" + clientOrder.Name + "<br>" +
//                "<strong>Телефон: </strong>" + clientOrder.Phone + "<br>" +
//                "<strong>Адрес доставки: </strong>" + clientOrder.Address_ + "<br>" +
//                "<strong>Пол: </strong>" + (clientOrder.Sex == false ? "Мужчина" : "Женщина") + "<br>" +
//                "<strong>Бокс: </strong>" + Enum.GetName(typeof(BoxTypes), clientOrder.BoxType) + "<br>" +
//                "<strong>Кол-во дней: </strong>" + clientOrder.NumDays + "<br>" +
//                "<strong>Комментарий: </strong>" + clientOrder.Comment;

           
//            string html = await ReadHTML();
//            var doc = new HtmlDocument();
//            doc.LoadHtml(html);
//            doc.GetElementbyId("main").InnerHtml = body;
//            MemoryStream memoryStream = new MemoryStream();
//            doc.Save(memoryStream);
//            memoryStream.Seek(0, SeekOrigin.Begin);
//            StreamReader streamReader = new StreamReader(memoryStream);
//            return await streamReader.ReadToEndAsync();
//        }


//        public async Task SendEmail()
//        {
//            string from = "cabbage7days@gmail.com"; //Replace this with your own correct Gmail Address

//            string to = "cabbage7days@gmail.com"; //Replace this with the Email Address to whom you want to send the mail


//            MailMessage mail = new MailMessage();
//            mail.To.Add(to);
//            mail.To.Add(clientOrder.Email);
//            mail.From = new MailAddress(from, "Kapusta", Encoding.UTF8);
//            mail.Subject = "Заказ";
//            mail.SubjectEncoding = Encoding.UTF8;


//            mail.Body = await GenerateMailBodyInfo();

//            mail.BodyEncoding = Encoding.UTF8;
//            mail.IsBodyHtml = true;
//            mail.Priority = MailPriority.High;

//            SmtpClient client = new SmtpClient();
//            //Add the Creddentials- use your own email id and password

//            client.Credentials = new System.Net.NetworkCredential(from, "7dayscabbage");

//            client.Port = 587; // Gmail works on this port
//            client.Host = "smtp.gmail.com";
//            client.EnableSsl = true; //Gmail works on Server Secured Layer
//            try
//            {
//                client.Send(mail);
//            }
//            catch (Exception ex)
//            {
//                Exception ex2 = ex;
//                string errorMessage = string.Empty;
//                while (ex2 != null)
//                {
//                    errorMessage += ex2.ToString();
//                    ex2 = ex2.InnerException;
//                }
//                HttpContext.Current.Response.Write(errorMessage);
//            }
//        }
//        public async Task SendSms()
//        {
//            string clientphone = clientOrder.Phone.Replace(" (", string.Empty).Replace(") ", string.Empty).Replace("-", string.Empty);
//            string clientbody = "Спасибо за заказ! Доставка завтра с ? до ?";


//            //string smsbody = "Новий заказ\n" + "Имя: " + txbName.Text + "\nТел.: " + txbPhone.Text
//            //    + "\nBox: " + BoxListOrders.SelectedValue + "\nДни: " + Numdays.SelectedValue
//            //    + "\nАдрес: " + txbAdr.Text;
//            SMSWorker smsw = new SMSWorker();
//            smsw.Auth("cabbage", "7dayscabbage");
//            //Response.Write(smsw.SendSMS("Kapusta", "+380636472421", smsbody, null)[0]);
//        }
//    }
//}