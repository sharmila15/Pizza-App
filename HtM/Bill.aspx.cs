using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HtM
{
    public partial class Bill : System.Web.UI.Page
    {
        Home h1 = new Home();
        protected void Page_Load(object sender, EventArgs e)
        {
            // totalbill.Text = Convert.ToString(val);
           
            totalbill.Text = Convert.ToString(h1.CalcBill())+"$";
        }

        protected void SM_Click(object sender, EventArgs e)
        {
            

            totalbill.Text = Convert.ToString(h1.CalcBill()) + "$";
        }
    }
}