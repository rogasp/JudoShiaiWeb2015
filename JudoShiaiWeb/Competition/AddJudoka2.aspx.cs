using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JudoShiaiWeb.Competition
{
    public partial class AddJudoka2 : System.Web.UI.Page
    {
        judoshiaiEntities dbContext;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();
            int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
            int jid = Convert.ToInt16(Page.RouteData.Values["JudokaId"].ToString());

            var judoka = (from j in dbContext.judokas
                         where j.id == jid
                         select j).Single();
 
            if (!IsPostBack)
            {
                var belts = from b in dbContext.belts
                              select new { b.id, b.name };
                ddlBelts.DataSource = belts.ToList();
                ddlBelts.DataBind();
                ddlBelts.Focus();

                
                string fullname = judoka.last + ", " + judoka.name;

                litJudoka.Text = fullname;
                ddlBelts.SelectedIndex = judoka.beltid - 1;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();
            int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
            int jid = Convert.ToInt16(Page.RouteData.Values["JudokaId"].ToString());

            var judoka = (from j in dbContext.judokas
                          where j.id == jid
                          select j).Single();

            AddJudoka(judoka, jid, cid);
            Response.Redirect("~/ShowJudokas/" + cid.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
            Response.Redirect("~/AddJudoka/" + cid.ToString());
        }

        protected void AddJudoka(JudoShiaiWeb.judoka judoka, int jid, int cid)
        {
            competitionJudoka cj = new competitionJudoka();

            cj.addedBy = 0;
            cj.addedDate = DateTime.Now;
            cj.beltId = Convert.ToInt16(ddlBelts.SelectedValue);
            cj.clubbId = judoka.clubbid;
            cj.judokaId = jid;
            if (!String.IsNullOrEmpty(txtWeight.Text))
            {
                cj.weight = (int)(Convert.ToDecimal(txtWeight.Text) * 100);
            }
            else
            {
                cj.weight = 0;
            }
            cj.competitionId = cid;
            dbContext.competitionJudokas.Add(cj);
            dbContext.SaveChanges();
        }
    }
}