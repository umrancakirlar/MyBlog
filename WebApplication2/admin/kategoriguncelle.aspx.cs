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

    public partial class kategoriguncelle : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmdkguncelle = new SqlCommand("Select * from kategori where kategoriID='" + kategoriID + "'", baglan.baglan());
                SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();

                DataTable dtkguncelle = new DataTable("tablo");
                dtkguncelle.Load(drkguncelle);

                DataRow row = dtkguncelle.Rows[0];
                txt_kAdi.Text = row["kategoriAd"].ToString();
                txt_kSira.Text = row["kategoriSira"].ToString();
                txt_kAdet.Text = row["kategoriAdet"].ToString();
            }
        }

        protected void btn_kGuncelle_Click(object sender, EventArgs e)
        {
            if (fu_kResim.HasFile)
            {
                fu_kResim.SaveAs(Server.MapPath("/kresim/" + fu_kResim.FileName));
                SqlCommand cmdkguncelle = new SqlCommand("Update kategori Set kategoriAd='" + txt_kAdi.Text + "',kategoriSira='"+txt_kSira.Text+"', kategoriAdet='"+txt_kAdet.Text+"', kategoriResim='/kresim/"+fu_kResim.FileName+"' where kategoriID='"+kategoriID+"'", baglan.baglan());
                cmdkguncelle.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            }
            else
            {
                SqlCommand cmdguncelle = new SqlCommand("Update kategori Set kategoriAd='" + txt_kAdi.Text + "',kategoriSira='" + txt_kSira.Text + "',kategoriAdet='" + txt_kAdet.Text + "' where kategoriID='" + kategoriID + "'", baglan.baglan());
                cmdguncelle.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx");
            }
        }
    }
}