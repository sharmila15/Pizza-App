using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBAccess;

namespace HtM
{
    public partial class CustInfo : System.Web.UI.Page
    {
        String CustId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                CustmInfo.Visible = false;
                succ.Text = "Order Successfully placed, Thank you for shopping."+"<br/>";
                DateTime otherDate = DateTime.Now.AddMinutes(25);
                
                date.Text= "your order will be arrived in " + otherDate+"<br/>";
                lblMsg.Text = "Your Order Id is" + CustId;

            }
            else
                CustmInfo.Visible = true;
        }
        public void SubmitButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {

                SqlCommand cmd = new SqlCommand("AddCust", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CustFName", fn.Text);
                cmd.Parameters.AddWithValue("@CustomerLName", ln.Text);
                cmd.Parameters.AddWithValue("@Address", addr.Text);
                cmd.Parameters.AddWithValue("@PhoneNo", phn.Text);


                SqlParameter outputParameter = new SqlParameter();

                outputParameter.ParameterName = "@CustId";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outputParameter);

                conn.Open();
                cmd.ExecuteNonQuery();
                CustId = outputParameter.Value.ToString();
                lblMsg.Text = "Your Order Id is" + CustId;

            }
        }
        }
}