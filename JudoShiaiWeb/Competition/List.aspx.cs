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
                    hl.NavigateUrl = "~/ShowJudokas/" + id.ToString();
                }
            }
        }

    }
}