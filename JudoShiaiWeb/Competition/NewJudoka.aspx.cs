using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JudoShiaiWeb.Competition
{
    public partial class NewJudoka : System.Web.UI.Page
    {
        judoshiaiEntities dbContext;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int cid = Convert.ToInt16(Page.RouteData.Values["CompetitionId"].ToString());
                // int jid = Convert.ToInt16(Page.RouteData.Values["JudokaId"].ToString());

                Judoka1.New = true;
                Judoka1.CompetitionId = cid;

            }

        }
    }
}