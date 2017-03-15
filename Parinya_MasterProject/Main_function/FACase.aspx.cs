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
            string refCase = Request.QueryString["refCase"];
            refCase = "test";
            if (refCase != null)
            {
                this.case_reference.Text = refCase;
                this.case_reference.Enabled = false;
            }
            
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
            //XElement rootElement = XElement.Load("D:\\document.xml");
            //case_productName.Text = rootElement.Element("ProductName").Value.ToString();
            //string test = rootElement.Element("ProductName").Value;
            //XElement productnameElement = (XElement)((XElement)rootElement.FirstNode).FirstNode;
            //string test_string = (string)productnameElement.Value;
            //this.case_firmwareVersion.Text = test_string;
            //foreach (var FA_case in FA_cases)
            //{
            //    case_background.Text = (string)FA_case.FailureSymptom;
            //}
        }

        /// <summary>
        /// Save information/knowledge of the case.
        /// If this is new document, the system will create the new case document and add it into DB.
        /// System will not create the term index until user submit this document.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void case_buttonSave_Click(object sender, EventArgs e)
        {
            FACaseController controller = FACaseController.getInstance();
            controller.saveFACase(this);
        }

        /// <summary>
        /// submit the case document.
        /// system will create the term index of this document.
        /// ---> temp:: transfer the case from temp table to primary table and make the case ready for searching.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void case_buttonSubmit_Click(object sender, EventArgs e)
        {
            FACaseController controller = FACaseController.getInstance();
            controller.saveFACase(this);
            controller.indexing(this);

        }
    }
}