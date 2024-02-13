using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vtislemlerilib;
using System.Data;
using System.Data.SqlClient;


public partial class yazi_ekleme : System.Web.UI.Page
{
    vtbaglanti baglan = new vtbaglanti();
    DataTable tbl = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            drp_doldur();
        }
    }
    protected void drp_doldur()
    {
        tbl = baglan.tablo_cek("select * from kategoriler where ana_kategori_id='0'");
        if (tbl.Rows.Count > 0)
        {
            drp_kategori.DataTextField = "kategori_adi";
            drp_kategori.DataValueField = "id";
            drp_kategori.DataSource = tbl;
            drp_kategori.DataBind();

            drp_kategori.Items.Insert(0, new ListItem("Seçiniz...", "0"));
            drp_kategori.Items.Insert(0, new ListItem("Seçiniz...", "0"));
        }
        else
        {
            drp_kategori.Items.Clear();
        }

    }
    protected void btn_gonder_Click(object sender, EventArgs e)
    {
        string adi = Ayarlar.Temizle(txt_ad.Text);
        string soyadi = Ayarlar.Temizle(txt_soyadi.Text);
        string email = Ayarlar.Temizle(txt_mail.Text);
        string makale = Ayarlar.Temizle(txt_yazi.Text);
        string kategori = drp_kategori.SelectedItem.Text;
        string tarih = DateTime.Now.ToString();
        string anahtar = txt_anahtar_kelime.Text;
        string baslik = txt_baslik.Text;
        string durum = "0";


        tbl = baglan.tablo_cek("select * from kullanici_makale_gelen where mail='" + email + "' and durumu='0' ");
        if (tbl.Rows.Count > 5)
        {
            lbl_mesaj.Text = "";

        }
        else
        {
            if (drp_kategori.SelectedItem.Text != "Seçiniz..." && email != "rdvan.agacc@gmail.com" && email != "aylin.eren90@gmail.com" && email != "aylin.eren81@outlook.com")
            {
                baglan.islem_yap("insert into kullanici_makale_gelen (adi,soyadi,mail,kategori,makale,tarih,durumu,anahtar,baslik) values('" + adi + "','" + soyadi + "','" + email + "','" + kategori + "','" + makale + "','" + tarih + "','0','" + anahtar + "','" + baslik + "') ");


                txt_ad.Text = "";
                txt_soyadi.Text = "";
                txt_mail.Text = "";
                txt_yazi.Text = "";
                lbl_mesaj.Text = "İletini başarı ile aldık.";
                txt_baslik.Text = "";
                txt_anahtar_kelime.Text = "";
                drp_kategori.Items.Clear();
                drp_doldur();
                lbl_mesaj.Focus();

            }
            else
            {
                lbl_mesaj.Text = "*Lütfen Bir Kategori Seçiniz.";
            }

        }
    }
}