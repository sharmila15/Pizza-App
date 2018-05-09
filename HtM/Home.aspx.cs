using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HtM
{
    
    public partial class Home : System.Web.UI.Page
    {
        public int Counter=0;
        public int val;
        public int Tot;
        protected void Page_Load(object sender, EventArgs e)
        {
            CalcBill();
        }

        protected void Itb_Click(object sender, EventArgs e)
        {
            
             val= CalcBill();
        }
        public int CalcBill( )
        {
            
            
            Counter++;
            
            Tot = Counter * 20;
            return Tot;


        }

        protected void Grb_Click(object sender, EventArgs e)
        {
            val = CalcBill();
        }

        protected void Sib_Click(object sender, EventArgs e)
        {
            val = CalcBill();
        }

        protected void Neb_Click(object sender, EventArgs e)
        {
            val = CalcBill();
        }

        protected void NYb_Click(object sender, EventArgs e)
        {
            val = CalcBill();
        }

        protected void Deb_Click(object sender, EventArgs e)
        {
            val = CalcBill();
        }

        protected void Cab_Click(object sender, EventArgs e)
        {
            val = CalcBill();
        }

        protected void Tob_Click(object sender, EventArgs e)
        {
            val = CalcBill();
        }
    }
}