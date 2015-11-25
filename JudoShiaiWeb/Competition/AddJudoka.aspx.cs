using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JudoShiaiWeb.Competition
{
    public partial class AddJudoka : System.Web.UI.Page
    {
        judoshiaiEntities dbContext;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();
            int id = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());

            if (!IsPostBack)
            {
                LinkButton1.PostBackUrl = "~/AddJudoka/" + id.ToString();
                LinkButton2.PostBackUrl = "~/ShowJudokas/" + id.ToString();

                var judokas = from j in dbContext.vwAddJudokas
                              where !dbContext.competitionJudokas.Any(cj=> j.id==cj.judokaId&&cj.competitionId==id)
                                   select j;
                GridView1.DataSource = judokas.ToList();
                GridView1.DataBind();
                TextBox1.Focus();
                
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
                    string cid = Convert.ToString(Page.RouteData.Values["CompetitionId"].ToString());
                    string jid = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "id"));
                    hl.NavigateUrl = "~/AddJudoka2/" + cid + "/" +jid;
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());

            string text = TextBox1.Text;
            var judokas = from j in dbContext.vwAddJudokas
                          where (j.name.Contains(text)||
                                j.last.Contains(text)||
                                j.birthyear.ToString().Contains(text))&&
                                !dbContext.competitionJudokas.Any(cj => j.id == cj.judokaId && cj.competitionId == id)
                          select j;
            GridView1.DataSource = judokas.ToList();
            GridView1.DataBind();
            TextBox1.Focus();
        }
    }
}