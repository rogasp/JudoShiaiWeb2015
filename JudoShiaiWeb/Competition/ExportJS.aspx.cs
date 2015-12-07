using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SQLite;

namespace JudoShiaiWeb.Competition
{
    public partial class ExportJS : System.Web.UI.Page
    {
        judoshiaiEntities dbContext;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dbContext = new judoshiaiEntities();

            SQLiteConnection m_dbConnection;
            int index = 10;
            var showjudokas = (from j in dbContext.vwExportJS
                              where j.competitionId == 1
                              orderby j.last ascending
                              select j).ToList();

            m_dbConnection =
                new SQLiteConnection("Data Source=c:\\iks\\KM-2015-4.shi;Version=3;");
            m_dbConnection.Open();

            foreach (vwExportJ j in showjudokas)
            {
                string sql = "insert into competitors ([index], last, first, birthyear, belt, regcategory, weight, visible, deleted," +
                    " seeding, clubseeding) values ("+index+", '" + j.last+"', '" +j.name+"', " + j.birthyear +", " + (j.beltId-1) +
                    ", 'KM', "+ (j.weight*10)+", 1, 0, 0,0)";
                SQLiteCommand command = new SQLiteCommand(sql, m_dbConnection);
                command.ExecuteNonQuery();
                //TextBox1.Text = sql;
                index++;
            }

            m_dbConnection.Close();
        }
    }
}