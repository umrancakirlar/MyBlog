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
    public partial class makdetay : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        string makaleID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];
            SqlCommand cmdmakale=new SqlCommand("SELECT dbo.Makale.makaleTarih, dbo.kategori.kategoriResim, dbo.Makale.makaleBaslik, dbo.Makale.makaleIcerik, dbo.Makale.makaleID, dbo.Makale.makaleID, dbo.kategori.kategoriID FROM dbo.kategori INNER JOIN dbo.Makale ON dbo.kategori.kategoriID = dbo.Makale.kategoriID where dbo.Makale.makaleID='" + makaleID + "'", baglan.baglan());
            SqlDataReader drmakale = cmdmakale.ExecuteReader();
            dl_makale.DataSource = drmakale;
            dl_makale.DataBind();
        }
    }
}