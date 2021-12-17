using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FootbalManager.View
{
    public partial class MemberDetail : System.Web.UI.Page
    {
        public static string path = @"E:\Dowloads\Template\Footbal-Manager-master\Footbal-Manager-master\View\images\";
        DataProvider dp = new DataProvider();
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = path + loadImageName();
            Image1.DataBind();


        }

        public string loadImageName()
        {
            string id = Request.QueryString["id"];
            string sql = "Select b.i_data from dbo.member a inner join dbo.imagTeam b on a.m_id = b.playerId where a.m_id =" + id + "";
            DataTable dt = DataProvider.executeQuery(sql);
            return dt.Rows[0].ItemArray[0].ToString();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}