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
    public partial class ara : System.Web.UI.Page
    {

        sql_baglanti baglan = new sql_baglanti();
        string aranankelime = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            aranankelime = Request.QueryString["aranankelime"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdara = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet,dbo.Makale.makaleIcerik, dbo.Makale.makaleResim, dbo.Makale.makaleTarih, dbo.Makale.makaleID, dbo.kategori.kategoriResim FROM dbo.kategori INNER JOIN dbo.Makale ON dbo.kategori.kategoriID = dbo.Makale.kategoriID where makaleBaslik like '&" + aranankelime + "&' or makaleOzet like '%" + aranankelime + "%' or makaleIcerik like'%" + aranankelime + "%'", baglan.baglan());
                SqlDataReader drara = cmdara.ExecuteReader();

                dl_ara.DataSource = drara;
                dl_ara.DataBind();
            } 

        }
    }
}