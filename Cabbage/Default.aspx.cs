using System;
using System.Data;
using System.Data.Entity.Validation;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;
using Cabbage.Models;
using SMSProject.Services;

namespace Cabbage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Pege_PreRender(object sender, EventArgs e)
        {

        }

        protected void Page_Load()
        {
            if (!IsPostBack)
            {
                BoxList.DataSource = Enum.GetNames(typeof(BoxTypes));
                BoxListOrders.DataSource = Enum.GetNames(typeof(BoxTypes));

                BoxList.DataBind();
                BoxListOrders.DataBind();

                Numdays.Items.AddRange(Enumerable.Range(1, 100).Select(e => new ListItem(e.ToString())).ToArray());

            }
        }

        protected void BoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int choice = BoxList.SelectedIndex;
            int gender = Convert.ToInt32(RadioButtonList1.SelectedValue);
            DataSet ds = new DataSet();

            if (choice == (int)BoxTypes.SlimBox && gender == (int)Gender.Male)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/SlimBox_male.xml"));

            }
            else if (choice == (int)BoxTypes.SlimBox && gender == (int)Gender.Female)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/SlimBox_female.xml"));
            }
            else if (choice == (int)BoxTypes.BalanceBox && gender == (int)Gender.Male)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/BalanceBox_male.xml"));
            }
            else if (choice == (int)BoxTypes.BalanceBox && gender == (int)Gender.Female)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/BalanceBox_female.xml"));
            }
            else if (choice == (int)BoxTypes.FitBox && gender == (int)Gender.Male)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/FitBox_male.xml"));
            }
            else if (choice == (int)BoxTypes.FitBox && gender == (int)Gender.Female)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/FitBox_female.xml"));
            }
            else if (choice == (int)BoxTypes.StrongBox && gender == (int)Gender.Male)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/StrongBox_male.xml"));
            }
            else if (choice == (int)BoxTypes.StrongBox && gender == (int)Gender.Female)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/StrongBox_female.xml"));
            }
            else if (choice == (int)BoxTypes.LunchBox)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/LunchBox.xml"));
            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void PlaceOrder(object sender, EventArgs e)
        {
            DB_A2CE2A_OrdersEntities1 context = new DB_A2CE2A_OrdersEntities1();
            context.Orders.Add(new Orders()
            {
                Name = txbName.Text,
                Phone = txbPhone.Text,
                Address_ = txbAdr.Text,
                BoxType = (short)BoxListOrders.SelectedIndex,
                Comment = txbComment.Text,
                Email = txbEmail.Text,
                NumDays = Convert.ToInt32(Numdays.SelectedValue),
                Sex = Convert.ToBoolean(rblSex.SelectedIndex),
                Date = DateTime.Now
            });
            try
            {

                context.SaveChanges();

            }
            catch (DbEntityValidationException ex)
            {
                foreach (DbEntityValidationResult validationError in ex.EntityValidationErrors)
                {
                    Response.Write("Object: " + validationError.Entry.Entity.ToString());
                    Response.Write(" ");
                    foreach (DbValidationError err in validationError.ValidationErrors)
                    {
                        Response.Write(err.ErrorMessage + " ");
                    }
                }
            }

            SendEmail();
            //SendSms();

        }

        private void SendSms()
        {
            string clientphone = txbPhone.Text.Replace(" (", string.Empty).Replace(") ", string.Empty).Replace("-", string.Empty);
            string clientbody = "Спасибо за заказ! Доставка завтра с ? до ?";
            

            //string smsbody = "Новий заказ\n" + "Имя: " + txbName.Text + "\nТел.: " + txbPhone.Text
            //    + "\nBox: " + BoxListOrders.SelectedValue + "\nДни: " + Numdays.SelectedValue
            //    + "\nАдрес: " + txbAdr.Text;
            SMSWorker smsw = new SMSWorker();
            smsw.Auth("cabbage", "7dayscabbage");
            //Response.Write(smsw.SendSMS("Kapusta", "+380636472421", smsbody, null)[0]);
        }

        private void SendEmail()
        {
            string from = "cabbage7days@gmail.com"; //Replace this with your own correct Gmail Address

            string to = "cabbage7days@gmail.com"; //Replace this with the Email Address to whom you want to send the mail


            MailMessage mail = new MailMessage();
            mail.To.Add(to);
            mail.From = new MailAddress(from, "Ghost", Encoding.UTF8);
            mail.Subject = "New order";
            mail.SubjectEncoding = Encoding.UTF8;


            mail.Body = "Name: " + txbName.Text + "<br>" +
                "Phone: " + txbPhone.Text + "<br>" +
                "Adress: " + txbAdr.Text + "<br>" +
                "Box: " + BoxListOrders.SelectedValue + "<br>" +
                "Days: " + Numdays.SelectedValue + "<br>" +
                "Sex: " + (rblSex.SelectedIndex == 0 ? "Male" : "Female") + "<br>" +
                "E-mail: " + txbEmail.Text + "<br>" +
                "Comment: " + txbComment.Text;


            mail.BodyEncoding = Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;

            SmtpClient client = new SmtpClient();
            //Add the Creddentials- use your own email id and password

            client.Credentials = new System.Net.NetworkCredential(from, "7dayscabbage");

            client.Port = 587; // Gmail works on this port
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true; //Gmail works on Server Secured Layer
            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                HttpContext.Current.Response.Write(errorMessage);
            }
        }
    }
}