using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JudoShiaiWeb.Competition
{
    public partial class RemoveJudoka : System.Web.UI.Page
    {
        judoshiaiEntities dbContext;

        protected void Page_Load(object sender, EventArgs e)
        {

            dbContext = new judoshiaiEntities();
            int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
            int jid = Convert.ToInt16(Page.RouteData.Values["JudokaId"].ToString());
            int lid = Convert.ToInt16(Page.RouteData.Values["LinkId"].ToString());

            if (!IsPostBack)
            {
                //LinkButton1.PostBackUrl = "~/AddJudoka/" + id.ToString();

                var judoka = (from j in dbContext.judokas
                                   where j.id == jid
                                   select j).Single();

                var competition= (from c in dbContext.competitions
                                 where c.id == cid
                                 select c).Single();

                var clubb = (from k in dbContext.clubbs
                             where k.id == judoka.clubbid
                             select k).Single();

                lblClub.Text = clubb.name;
                lblCompetition.Text = competition.name;
                lblJudoka.Text = judoka.last + ", " + judoka.name;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();
            int lid = Convert.ToInt16(Page.RouteData.Values["LinkId"].ToString());
            int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());

            var competitionJudokas = (from c in dbContext.competitionJudokas
                                      where c.id == lid
                                      select c).Single();

            dbContext.competitionJudokas.Remove(competitionJudokas);
            dbContext.SaveChanges();

            Response.Redirect("~/ShowJudokas/" + cid.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
            Response.Redirect("~/ShowJudokas/" + cid.ToString());
        }
    }
}