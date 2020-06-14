using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class makaledetay : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];
            SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleTarih, dbo.Makale.makaleID, dbo.kategori.kategoriResim, dbo.Makale.makaleBaslik, dbo.Makale.makaleIcerik, dbo.Makale.makaleID, dbo.kategori.kategoriID FROM  dbo.kategori INNER JOIN dbo.Makale ON dbo.kategori.kategoriID = dbo.Makale.kategoriID where dbo.Makale.MakaleID='" + makaleID + "'", baglan.baglan());
            SqlDataReader drmakale = cmdmakale.ExecuteReader();

            dl_makale.DataSource = drmakale;
            dl_makale.DataBind();

            SqlCommand cmdygetir = new SqlCommand("Select * from Yorum where makaleID='"+makaleID+"'",baglan.baglan());

            SqlDataReader drygetir = cmdygetir.ExecuteReader();

            dl_yorumgetir.DataSource = drygetir;
            dl_yorumgetir.DataBind();


        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_yorumekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdyorumekle = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumIcerik,makaleID) Values('"+txt_adsoyad.Text+"','"+txt_yorumIcerik.Text+"','"+makaleID+"')", baglan.baglan());
            cmdyorumekle.ExecuteNonQuery();
            lbl_bilgi.Text = "Yorumunuz başarıyla alındı.";
            txt_adsoyad.Text = "";
            txt_yorumIcerik.Text = "";
        }
     }
}