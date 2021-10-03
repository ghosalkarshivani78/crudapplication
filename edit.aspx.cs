using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication10
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) 
            {
                string id = Request.QueryString["id"];//getting value from url
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = null;
                string sql = "select * from student1 where id = '" + id + "' ";
                con = new SqlConnection(strcon);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(sql, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Repeaters1.DataSource = dt;
                Repeaters1.DataBind();
                con.Close();
            }
        protected void update (object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                string id = Request.QueryString["id"];//getting value from url

                RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
                string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
               
                string email = (item.FindControl("email") as TextBox).Text;
                string pass = (item.FindControl("pass") as TextBox).Text;
                string address1 = (item.FindControl("address1") as TextBox).Text;
                string address2 = (item.FindControl("address2") as TextBox).Text;
                string city = (item.FindControl("city") as TextBox).Text;
                string state = (item.FindControl("state") as TextBox).Text;
                string zip = (item.FindControl("zip") as TextBox).Text;

                string sql = "update student1 set Email='" + email + "' ,Password='" + pass + "',Address1='" + address1 + "',Address2='" + address2 + "',City='" + city + "',State='" + state + "',Zip='" + zip + "' where id = '" + id + "'";
                con = new SqlConnection(strcon);

                SqlCommand cmd = new SqlCommand(sql, con);
                con.Open();
                int status=cmd.ExecuteNonQuery();
                if (status > 0)
                {
                    // result.Text = "Successfully inserted";
                    Response.Redirect("service");
                }
                else
                {
                    Console.WriteLine("Enable");
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally {
                con.Close();
            }

        }
    }
}
