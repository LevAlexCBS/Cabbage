using System;
using System.Data;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web.UI.WebControls;
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

        protected async void PlaceOrder(object sender, EventArgs e)
        {
            if (Page.IsValid)
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

                Response.Write("<script>alert('Спасибо за заказ');</script>");


                await new NotifySender(newOrder).SendEmail();
                
            }

        }



    }
}