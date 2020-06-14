using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication2.admin
{
    public partial class kategoriler : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();
        string kategoriID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           // if (Session["yoneticiKullanici"] == null)
          //  {
           //     Response.Redirect("default.aspx");
           // }

            kategoriID = Request.QueryString["kategoriID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmdsil = new SqlCommand("delete from kategori where kategoriID='" + kategoriID + "'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
            }

            SqlCommand cmdkgetir = new SqlCommand("select *from kategori", baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();
            dl_kategorigetir.DataSource = drkgetir;
            dl_kategorigetir.DataBind();


          
        }
        
        
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

            
        }
        
        protected void btn_kategori_ekle_Click(object sender, EventArgs e)
        {


            if (kategori_resim.HasFile)
            {
                kategori_resim.SaveAs(Server.MapPath("/kresim/" + kategori_resim.FileName));

                SqlCommand cmdekle = new SqlCommand("insert into kategori(kategoriAd,kategoriSira,kategoriResim)Values('"+txt_kategori_adi.Text+"','"+txt_sira.Text+"','/kresim/"+kategori_resim.FileName+"')", baglan.baglan());
                cmdekle.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx");
            }
            else
            {
                btn_kategori_ekle.Text = "Resim Ekle";
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void datalist_kategorigetir_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

       
    }
}