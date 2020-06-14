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
    public partial class makaleekle : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();

        string makaleID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yoneticiKullanici"] == null)
            {
                Response.Redirect("default.aspx");
            }


            makaleID = Request.QueryString["makaleID"];
            islem = Request.QueryString["islem"];
            if(islem=="sil")
            {
                SqlCommand cmdmsil = new SqlCommand("Delete from Makale where makaleID='" + makaleID + "'", baglan.baglan());
                cmdmsil.ExecuteNonQuery();
            }
           
            SqlCommand cmdkgetir = new SqlCommand("Select *from kategori", baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

            ddl_kategori.DataTextField = "kategoriAd";
            ddl_kategori.DataValueField = "kategoriID";
            ddl_kategori.DataSource = drkgetir;
            ddl_kategori.DataBind();

            SqlCommand cmdmgetir = new SqlCommand("Select * from Makale", baglan.baglan());
            SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

            dl_makale_getir.DataSource = drmgetir;
            dl_makale_getir.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btn_makale_ekle_Click(object sender, EventArgs e)
        {
            if (fu_makale_resim.HasFile)
           {

                fu_makale_resim.SaveAs(Server.MapPath("/makaleResim/" + fu_makale_resim.FileName));
                SqlCommand cmdmekle = new SqlCommand("insert into Makale(makaleBaslik,makaleOzet,makaleIcerik,makaleResim,kategoriID) Values('" + txt_makale_baslik.Text + "','" + txt_makale_ozet.Text + "','" + txt_makale_icerik.Text + "','/makaleResim/" + fu_makale_resim.FileName + "','" + ddl_kategori.SelectedValue + "')", baglan.baglan());
                cmdmekle.ExecuteNonQuery();
                Response.Redirect("makaleekle.aspx");

         }
           else
            {
                btn_makale_ekle.Text = "Resim Ekle";
            }
        }
    }
}