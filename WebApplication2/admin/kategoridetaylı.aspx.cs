using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.admin
{
    public partial class kategoridetaylı : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];
            SqlCommand cmdkategori = new SqlCommand("SELECT dbo.Makale.makaleTarih, dbo.Makale.makaleID, dbo.kategori.kategoriResim, dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet, dbo.kategori.kategoriID FROM  dbo.kategori INNER JOIN dbo.Makale ON dbo.kategori.kategoriID = dbo.Makale.kategoriID where dbo.kategoriID='"+kategoriID+"'", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();
            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();
        }
    }
}