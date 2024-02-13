using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vtislemlerilib;
using System.Data;
using System.Data.SqlClient;

public partial class proje_ekle : System.Web.UI.Page
{
    vtbaglanti baglan = new vtbaglanti();
    DataTable tbl = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_proje_ekle_Click(object sender, EventArgs e)
    {
        string adi = Ayarlar.Temizle(txt_adi.Text);
        string soyadi = Ayarlar.Temizle(txt_soyadi.Text);
        string email = Ayarlar.Temizle(txt_mail.Text);
        string proje = Ayarlar.Temizle(txt_proje_icerik.Text);
        string alan = Ayarlar.Temizle(txt_proje_alani.Text);
        string anahtar = txt_tag.Text;
        string tarih = DateTime.Now.ToString();
        string baslik = txt_proje_baslik.Text;
        


        baglan.islem_yap("insert into proje_ekle (adi,soyadi,mail,proje_adi,proje_alani,proje_tag,proje_icerik,tarih) values('" + adi + "','" + soyadi + "','" + email + "','" + baslik + "','" + alan + "','" + anahtar + "','" + proje + "','" + tarih + "') ");

                txt_adi.Text = "";
                txt_soyadi.Text = "";
                txt_mail.Text = "";
                txt_proje_icerik.Text = "";
                txt_proje_alani.Text = "";
                lbl_mesaj.Text = "İletini başarı ile aldık.";
                txt_proje_baslik.Text = "";
                txt_tag.Text = "";
            
        }
}