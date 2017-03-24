using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parinya_MasterProject.Controllers;

using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using AjaxControlToolkit;
using Lucene.Net.Search;
using Lucene.Net.Documents;
using Parinya_MasterProject.Controllers;

namespace Parinya_MasterProject.Main_Function
{
    public partial class SearchResult : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count > 0)
            {
                string symptom_msg = Session["symptom_msg"].ToString();
                Session.Remove("symptom_msg");

                CasesCollectionController collectionController = CasesCollectionController.getInstance();
                ArrayList searchResultCollection = collectionController.Search(symptom_msg);

                if(searchResultCollection.Count <= 0)
                {
                    this.Label1.Text = @"No case found from [" + symptom_msg + @"]";
                }
                else
                {
                    this.Label1.Text = @"Result of [" + symptom_msg + @"] hit [" + searchResultCollection.Count .ToString() + @"] cases";
                    //foreach(ScoreDoc hit in searchResultCollection)
                    for (int i = 0; i < ((searchResultCollection.Count) % 10); i++)
                    {
                        SearchResultStruct SearchResult = (SearchResultStruct)searchResultCollection[i];
                        Document hit = SearchResult.document;
                        ShowThumb thumb = new ShowThumb(hit.Get("id_code"), SearchResult.score, symptom_msg);
                        LiteralControl thumbControl = new LiteralControl(thumb.GetCaseDataHTMLString());

                        switch (i + 1)
                        {
                            case 1:
                                this.Panel1.Controls.Clear();
                                this.Panel1.Controls.Add(thumbControl);
                                break;
                            case 2:
                                this.Panel2.Controls.Clear();
                                this.Panel2.Controls.Add(thumbControl);
                                break;
                            case 3:
                                this.Panel3.Controls.Clear();
                                this.Panel3.Controls.Add(thumbControl);
                                break;
                            case 4:
                                this.Panel4.Controls.Clear();
                                this.Panel4.Controls.Add(thumbControl);
                                break;
                            case 5:
                                this.Panel5.Controls.Clear();
                                this.Panel5.Controls.Add(thumbControl);
                                break;
                            case 6:
                                this.Panel6.Controls.Clear();
                                this.Panel6.Controls.Add(thumbControl);
                                break;
                            case 7:
                                this.Panel7.Controls.Clear();
                                this.Panel7.Controls.Add(thumbControl);
                                break;
                            case 8:
                                this.Panel8.Controls.Clear();
                                this.Panel8.Controls.Add(thumbControl);
                                break;
                            case 9:
                                this.Panel9.Controls.Clear();
                                this.Panel9.Controls.Add(thumbControl);
                                break;
                            case 10:
                                this.Panel10.Controls.Clear();
                                this.Panel10.Controls.Add(thumbControl);
                                break;
                        }
                    }
                }
                //var dummyItems = Enumerable.Range(1, 150).Select(x => "Item " + x); // item collection
                //var pager = new Pager(dummyItems.Count(), page);

                //var viewModel = new IndexViewModel
                //{
                //    Items = dummyItems.Skip((pager.CurrentPage - 1) * pager.PageSize).Take(pager.PageSize),
                //    Pager = pager
                //};

            }
        }

    }
}