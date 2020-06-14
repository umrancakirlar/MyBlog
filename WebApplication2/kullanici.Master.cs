using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class kullanici : System.Web.UI.MasterPage
    {
        sql_baglanti baglan = new sql_baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdkategori = new SqlCommand("Select * from kategori", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();

            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();
        }

        protected void dl_kategori_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_ara_Click(object sender, EventArgs e)
        {
            Response.Redirect("ara.aspx?aranankelime=" + txt_ara.Text);
        }
    }
}