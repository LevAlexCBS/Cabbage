using System;
using System.Data;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using Cabbage.Models;



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
                //DataSet ds = new DataSet();
                //ds.ReadXml(Server.MapPath("~/App_Data/LunchBox.xml"));
                BoxList.DataSource = Enum.GetNames(typeof(BoxTypes));
                BoxListOrders.DataSource = Enum.GetNames(typeof(BoxTypes));
                //GridView_lunch.DataSource = ds;

                BoxList.DataBind();
                BoxListOrders.DataBind();
                //GridView_lunch.DataBind();

                Numdays.Items.AddRange(Enumerable.Range(1, 100).Select(e => new ListItem(e.ToString())).ToArray());
                CalculatePrice(null, EventArgs.Empty);
            }

        }

        protected void BoxList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int choice = BoxList.SelectedIndex;
            int gender = Convert.ToInt32(RadioButtonList1.SelectedValue);
            DataSet ds = new DataSet();

            #region BoxChoice
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
            else if (choice == (int)BoxTypes.FreshBox && gender == (int)Gender.Female)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/FreshBox_female.xml"));
            }
            else if (choice == (int)BoxTypes.FreshBox && gender == (int)Gender.Male)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/FreshBox_male.xml"));
            }
            else if (choice == (int)BoxTypes.VegeterianBox && gender == (int)Gender.Male)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/VegeterianBox_male.xml"));
            }
            else if (choice == (int)BoxTypes.VegeterianBox && gender == (int)Gender.Female)
            {
                ds.ReadXml(Server.MapPath("~/App_Data/VegeterianBox_female.xml"));
            }
            #endregion 

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected async void PlaceOrder(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DB_A2CE2A_OrdersEntities context = new DB_A2CE2A_OrdersEntities();
                Order newOrder = new Order()
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

                Response.Write("<script>alert('Спасибо за заказ');</script>");


                await new NotifySender(newOrder).SendEmail();

            }

        }
        protected void CalculatePrice(object sender, EventArgs e)
        {
            string sex = (BoxListOrders.SelectedValue == "Мужчина") ? "Male" : "Female";
            string discount = CheckDiscount();
            XDocument xdoc = XDocument.Load(Server.MapPath("~/App_Data/Prices.xml"));
            var items = from xe in xdoc.Element("prices").Elements("price")
                        where xe.Attribute("boxtype").Value == BoxListOrders.SelectedValue
                        && xe.Attribute("gender").Value == sex
                        && xe.Attribute("discount").Value == discount
                        select xe.Value;
            Label1.Text = (Convert.ToInt32(items.Single())*(Numdays.SelectedIndex + 1)).ToString();

        }

        private string CheckDiscount()
        {
            string discount = string.Empty;
            Regex regex = new Regex(@"^\+38 \(\d{3}\) \d{3}-\d{2}\d{2}$");
            if (regex.IsMatch(txbPhone.Text))
            {
                using (DB_A2CE2A_OrdersEntities context = new DB_A2CE2A_OrdersEntities())
                {
                    var query = from users in context.Orders
                                where users.Phone == txbPhone.Text
                                select users.Name;
                    discount = query.SingleOrDefault();
                }
            }
            if (string.IsNullOrEmpty(discount))
                return "0";
            else if (Numdays.SelectedIndex < 5)
            {
                return "1";
            }
            else if (Numdays.SelectedIndex < 21)
            {
                return "2";
            }
            else
            {
                return "3";
            }
        }
    }
}