using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parinya_MasterProject.Controllers;

namespace Parinya_MasterProject.Main_Function
{
    public partial class FACase : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void failure_buttonSearch_Click(object sender, EventArgs e)
        {
            FACaseController controller = FACaseController.getInstance();
            controller.saveFACase(this);
        }

        //protected void failure_buttonSearch_Click(object sender, EventArgs e)
        //{
        //    FACaseController controller = FACaseController.getInstance();
        //    controller.saveFACase(this);
        //}
    }
}