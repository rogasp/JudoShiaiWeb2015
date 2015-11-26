using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JudoShiaiWeb.Competition
{
    public partial class List : Page
    {
        judoshiaiEntities dbContext;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();

            if (!IsPostBack)
            {
                var competitions = from c in dbContext.vwListCompetitions
                                   orderby c.date descending
                                   select c;
                GridView1.DataSource = competitions.ToList();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HyperLink hl = (HyperLink)e.Row.FindControl("HyperLink1");
                if (hl != null)
                {
                    //DataRowView drv = (DataRowView)e.Row.DataItem;
                    string id = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "id"));
                    int cstatus = Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "competitionStatus"));
                    hl.NavigateUrl = "~/ShowJudokas/" + id.ToString();

                    switch(cstatus)
                    {
                        case 0: //Competition open and not full
                            hl.CssClass = "btn btn-success active";
                            break;

                        case 1: //Competition is blocked, not possible to open
                            hl.CssClass = "btn btn-danger disabled";
                            break;

                        case 2: //Competition is full but possible to open
                            hl.CssClass = "btn btn-warning active";
                            break;
                    }
                }

                Label lblnc = (Label)e.Row.FindControl("lblnumComp");
                if (lblnc != null)
                {
                    //DataRowView drv = (DataRowView)e.Row.DataItem;
                    int nc = Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "maxcompetitors"));
                    string tnc = "Ingen begränsning";

                    if (nc!=0)
                    {
                        tnc = nc.ToString();
                    }
                    lblnc.Text=tnc;
                }
            }
        }

    }
}