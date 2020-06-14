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
    public partial class defaultyeni : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleTarih,dbo.Makale.makaleID, dbo.kategori.kategoriResim, dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet FROM  dbo.kategori INNER JOIN dbo.Makale ON dbo.kategori.kategoriID = dbo.Makale.kategoriID", baglan.baglan());
            SqlDataReader drmakaleGetir = cmdmakale.ExecuteReader();

            dl_makale.DataSource = drmakaleGetir;
            dl_makale.DataBind();
        }
    }
}
