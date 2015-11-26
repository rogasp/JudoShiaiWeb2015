using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JudoShiaiWeb.Competition
{
    public partial class ShowJudokas : System.Web.UI.Page
    {
        judoshiaiEntities dbContext;
        int maxNumCompetitors;
        int numCompetitors;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();
            int id = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());

            if (!IsPostBack)
            {
                LinkButton1.PostBackUrl = "~/AddJudoka/"+id.ToString();

                var competition = (from c in dbContext.competitions
                                  where c.id == id
                                  select c).Single();

                maxNumCompetitors = (int)competition.maxcompetitors;

                string maxText = "";

                if(maxNumCompetitors!=0)
                {
                    maxText = " av " + maxNumCompetitors.ToString();
                }

                var showjudokas = from j in dbContext.vwShowJudokas
                                  where j.competitionId == id
                                  orderby j.last ascending
                                  select j;
                GridView1.DataSource = showjudokas.ToList();
                GridView1.DataBind();
                lblAntal.Text = " (" + showjudokas.Count().ToString() + " st" + maxText +")";
                numCompetitors = showjudokas.Count();
            }

            if ((maxNumCompetitors - numCompetitors) > 0)
            {
                LinkButton1.CssClass = "btn btn-success active";
            }
            else
            {
                LinkButton1.CssClass = "btn btn-danger disabled";
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lbl = (Label)e.Row.FindControl("lblVikt");
                if (lbl != null)
                {
                    decimal vikt = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "weight"))/100;
                    lbl.Text = vikt.ToString("F")+ " kg";
                }

                HyperLink hl1 = (HyperLink)e.Row.FindControl("HyperLink3");
                if (hl1 != null)
                {
                    bool candouble = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "candouble"));
                    if (candouble)
                    {
                        hl1.CssClass = "btn btn-success active";
                    }
                    else
                    {
                        hl1.CssClass = "btn btn-danger disabled";
                    }
                }

                HyperLink hl2 = (HyperLink)e.Row.FindControl("HyperLink2");
                if (hl2 != null)
                {
                    int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
                    int jid = Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "judokaId"));
                    int lid = Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "id"));

                    hl2.NavigateUrl = "~/Removejudoka/" +cid+ "/" +jid+ "/" + lid;
                }

                HyperLink hl3 = (HyperLink)e.Row.FindControl("HyperLink1");
                if (hl3 != null)
                {
                    int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
                    int jid = Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "judokaId"));
                    int lid = Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "id"));

                    hl3.NavigateUrl = "~/WeighJudoka/" + cid + "/" + jid + "/" + lid;
                }

                

            }
        }
    }
}