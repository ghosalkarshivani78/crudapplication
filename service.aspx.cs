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
    public partial class service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = null;
            string sql = "select * from student1 order by id desc";
            con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeaters1.DataSource = dt;
            Repeaters1.DataBind();
            con.Close();

        }
        protected void submitdata(object sender, EventArgs e)
        {
            string Email = email.Text;
            string Password = pass.Text;
            string Address1 = address1.Text;
            string Address2 = address2.Text;
            string City = city.Text;
            string State = state.Text;
            string Zip = zip.Text;

            SqlConnection con = null;
            try
            {
                string strcon = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
                con = new SqlConnection(strcon);
                string sql = " insert into student1(Email, Password , Address1 , Address2 , City, State , Zip )values('" + Email + "','" + Password + "','" + Address1 + "','" + Address2 + "','" + City + "','" + State + "','" + Zip + "')";

                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                int status = cmd.ExecuteNonQuery();
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
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}