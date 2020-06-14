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
    public partial class iletisim : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdekle = new SqlCommand("insert into Iletisim(iletisimAdSoyad,iletisimIcerik) Values('" + txt_adsoyad.Text + "','" + txt_yorumIcerik.Text + "')", baglan.baglan());
            cmdekle.ExecuteNonQuery();
            //Response.Redirect("iletisim.aspx");
            txt_adsoyad.Text = "";
            txt_yorumIcerik.Text = "";
            lbl_bilgi.Text = "Mesajınız Alındı.";
        }
    }
    }
