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
            Orders newOrder = new Orders()
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
            };
            context.Orders.Add(newOrder);
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

            new NotifySender(newOrder).SendEmail();
            //SendEmail();
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
            
        }
    }
}