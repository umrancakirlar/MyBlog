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
    public partial class makale_guncelle : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        string makaleID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yoneticiKullanici"] == null)
            {
                Response.Redirect("default.aspx");
            }
            makaleID = Request.QueryString["makaleID"];

            if(Page.IsPostBack==false)
            {
                SqlCommand cmdmgetir = new SqlCommand("Select * from Makale where makaleID='" + makaleID + "'", baglan.baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();
                DataTable dtmgetir = new DataTable("tablo");
                dtmgetir.Load(drmgetir);
                DataRow row = dtmgetir.Rows[0];
                txt_makaleBaslik.Text = row["makaleBaslik"].ToString();
                txt_makale_ozet.Text = row["makaleOzet"].ToString();
                txt_makaleIcerik.Text = row["makaleIcerik"].ToString();
                

            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            if(fu_resim.HasFile)
            {
                fu_resim.SaveAs(Server.MapPath("/kresim/" + fu_resim.FileName));
                SqlCommand cmdmguncelle = new SqlCommand("Update Makale Set makaleBaslik='" + txt_makaleBaslik.Text + "', makaleOzet='" + txt_makale_ozet.Text+"',makaleIcerik='" + txt_makaleIcerik.Text + "',makaleResim='/kresim"+fu_resim.FileName+"' where makaleID = '"+makaleID+"'" , baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();
                Response.Redirect("makaleekle.aspx");
            }
            else
            {
                SqlCommand cmdmguncelle = new SqlCommand("Update Makale Set makaleBaslik='" + txt_makaleBaslik.Text + "',makaleOzet='" + txt_makale_ozet.Text + "',makaleIcerik='" + txt_makaleIcerik.Text + "'  where makaleID='"+makaleID+"'", baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();
                Response.Redirect("makaleekle.aspx");
            }
          
        }
    }
}