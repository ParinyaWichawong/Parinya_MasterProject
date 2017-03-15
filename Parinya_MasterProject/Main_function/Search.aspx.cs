using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parinya_MasterProject.Main_Function
{
    public partial class Search : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Redirect to AdvancedSearch page and passing messages from symptom textbox.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void AdvancedSearch_button_Click(object sender, EventArgs e)
        {
            string msgPassing = symptom.Text;
            //if (symptom.Wrap)
            //{
            //    msgPassing.Replace("\r", "  ");
            //    msgPassing.Replace("\n", "  ");
            //}
            Response.Redirect("AdvancedSearch.aspx?symp=" + msgPassing);
        }

        protected void Search_button_Click(object sender, EventArgs e)
        {

        }
    }
}