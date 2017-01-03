using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parinya_MasterProject.Controllers;
using System.Xml.Linq;

namespace Parinya_MasterProject.Main_Function
{
    public partial class FACase : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //XDocument doc = XDocument.Load("D:\\document.xml");
            //var FA_cases = from FA_case in doc.Descendants("FACase")
            //        select new
            //        {
            //            ProductName = FA_case.Element("ProductName").Value,
            //            FimwareVersion = FA_case.Element("FimwareVersion").Value,
            //            Location = FA_case.Element("Location").Value,
            //            FailureName = FA_case.Element("FailureName").Value,
            //            FailureSymptom = FA_case.Element("FailureSymptom").Value,
            //            ContainmentAction = FA_case.Element("ContainmentAction").Value,
            //            RootcauseAnalysis = FA_case.Element("RootcauseAnalysis").Value,
            //            CorrectiveAction = FA_case.Element("CorrectiveAction").Value,
            //            PreventiveAction = FA_case.Element("PreventiveAction").Value,
            //        };
            XElement rootElement = XElement.Load("D:\\document.xml");
            //case_productName.Text = rootElement.Element("ProductName").Value.ToString();
            XElement productnameElement = (XElement)((XElement)rootElement.FirstNode).FirstNode;
            string test_string = (string)productnameElement.Value;
            this.case_firmwareVersion.Text = test_string;
            //foreach (var FA_case in FA_cases)
            //{
            //    case_background.Text = (string)FA_case.FailureSymptom;
            //}
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