using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.CodeDom;

namespace WebApplication2.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        sql_baglanti baglan = new sql_baglanti();

        


        protected void Page_Load(object sender, EventArgs e)
        {
            

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select* from Yonetici where yoneticiKullanici='" +txt_kullanici.Text+" ' and yoneticiSifre='"+txt_sifre.Text+"'" , baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();


            if(dr.Read())
            {
                Session["yoneticiKullanici"] = dr["yoneticiKullanici"];
                Response.Redirect("admin_panel.aspx");
            }
            else
            {
                lbl_bilgi.Text = "Hatalı Giriş";
            }
           
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_user_Click1(object sender, EventArgs e)
        {
            SqlCommand cmdus = new SqlCommand("Select * from user where userAdi='" + txt_user.Text + "'", baglan.baglan());
            SqlDataReader drus = cmdus.ExecuteReader();



           if (drus.Read()) { Session["userAdi"] = drus["null"]; Response.Redirect("~/kullanici/def.aspx"); }
        }

        protected void txt_user_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
