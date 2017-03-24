using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parinya_MasterProject
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg = Request.QueryString["msg"];
            if (msg != null && msg != "")
            {
                string[] str = msg.Split(',');
                this.Label1.Text = str[0];
                this.Label2.Text = str[1];
            }
            else
            {
                this.Label1.Text = "KMFA SYSTEM";
                this.Label2.Text = "Knowledge Management System for Failure Analysis in HDD.";
            }
        }
    }
}