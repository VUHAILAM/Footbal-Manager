using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootbalManager.View
{
    public partial class TeamInfo : System.Web.UI.Page
    {
        DataProvider dp = new DataProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) loadMemberInfo();


        }
        public void loadMemberInfo()
        {
            string sql = "Select a.m_id ID,a.m_name Name,a.m_address Address,a.m_dob [Date of birth],a.m_phone  [Phone number],a.m_shirtNumber  [Shirt number],a.m_exp Experience,a.p_status Status,b.p_name  Position,c.r_name Role from dbo.member a inner join dbo.position b on a.positionId = b.p_id inner join dbo.roleMember c on a.roleId = c.r_id";
            DataTable dt = DataProvider.executeQuery(sql);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }



        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            string code = GridView1.Rows[e.RowIndex].Cells[2].Text;
            string sql = "Delete from dbo.member where m_id =" + code + "";
            DataProvider.executeNonQuery(sql);
            loadMemberInfo();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            loadMemberInfo();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            loadMemberInfo();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)

        {
            loadMemberInfo();

            string id = GridView1.Rows[e.RowIndex].Cells[2].Text;
            string name = GridView1.Rows[e.RowIndex].Cells[3].Text;
            string address = GridView1.Rows[e.RowIndex].Cells[4].Text;
            string dob = GridView1.Rows[e.RowIndex].Cells[5].Text;
            string phone = GridView1.Rows[e.RowIndex].Cells[6].Text;
            string snum = GridView1.Rows[e.RowIndex].Cells[7].Text;
            string exp = GridView1.Rows[e.RowIndex].Cells[8].Text;
            string status = GridView1.Rows[e.RowIndex].Cells[9].Text;
            string role = GridView1.Rows[e.RowIndex].Cells[10].Text;
            string posittion = GridView1.Rows[e.RowIndex].Cells[11].Text;
            if (role == "player")
            {
                role = "3";
            }
            if (role == "coach")
            {
                role = "2";
            }
            if (role == "admin")
            {
                role = "1";
            }
            if (posittion == "goalkeeper")
            {
                posittion = "1";
            }
            if (posittion == "defender")
            {
                posittion = "2";
            }
            if (posittion == "central defender")
            {
                posittion = "3";
            }
            if (posittion == "midfield")
            {
                posittion = "4";
            }
            if (posittion == "striker")
            {
                posittion = "5";
            }
            if (posittion == "N/A")
            {
                posittion = "6";
            }
            string sql = "Update dbo.member set m_name='" + name + "',m_address='" + address + "',m_dob='" + dob + "',m_phone=" + phone + ",m_shirtNumber=" + snum + ",m_exp=" + exp + ",p_status='" + status + "',roleId=" + role + ",positionId=" + posittion + " where m_id=" + id + "";
            

            DataProvider.executeNonQuery(sql);
            loadMemberInfo();

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string id = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
            Response.Redirect(@"MemberDetail.aspx?id=" + id);



        }
    }
}