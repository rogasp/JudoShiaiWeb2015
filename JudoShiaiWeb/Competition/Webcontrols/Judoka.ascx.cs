using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JudoShiaiWeb.Competition.Webcontrols
{
    public partial class Judoka : System.Web.UI.UserControl
    {
        private judoka _judoka = new judoka();
        private bool _new=false;
        private int _id=0;
        private int _cid;

        judoshiaiEntities dbContext;

        public judoka nJudoka
        {
            get
            {
                return this._judoka;
            }
            set
            {
                _judoka = value;
            }
        } 

        public bool New
        {
            get
            {
                return this._new;
            }
            set
            {
                _new = value;
            }
        }

        public int nId
        {
            get
            {
                return this._id;
            }
            set
            {
                _id = value;
            }
        }

        public int CompetitionId
        {
            get
            {
                return this._cid;
            }
            set
            {
                _cid = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();

            if (!IsPostBack)
            {
                var clubs = from c in dbContext.clubbs
                            orderby c.name ascending
                            select c;
                ddlClubb.DataSource = clubs.ToList();
                ddlClubb.DataBind();
                ddlClubb.Focus();
                ViewState["cid"] = _cid;
                //ViewState["judoka"] = _judoka;
            }
            _cid = (int)ViewState["cid"];
            //_judoka = (judoka)ViewState["judoka"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            _judoka.birthyear = Convert.ToInt16(txtBirthYear.Text);
            _judoka.clubbid = Convert.ToInt16(ddlClubb.SelectedValue);
            _judoka.last = txtLast.Text;
            _judoka.name = txtName.Text;
            _judoka.sex = ddlSex.SelectedValue;

            dbContext.judokas.Add(_judoka);
            dbContext.SaveChanges();

            Response.Redirect("~/AddJudoka2/" + _cid.ToString() + "/" + _judoka.id.ToString());

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddJudoka/" + _cid.ToString());
        }
    }
}