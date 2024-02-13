using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vtislemlerilib;
using System.Data;
using System.Data.SqlClient;



public partial class iletisim : System.Web.UI.Page
{
    vtbaglanti baglan = new vtbaglanti();
    DataTable tbl = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_mail_gonder_Click(object sender, EventArgs e)
    {
        lbl_mesaj.Text = "";
        string adi = Ayarlar.Temizle(txt_ad.Text);
        string soyadi = Ayarlar.Temizle(txt_soyad.Text);
        string email = Ayarlar.Temizle(txt_mail.Text);
        string mesaj = Ayarlar.Temizle(txt_mesaj.Text);
        string tarih = DateTime.Now.ToString();

        tbl = baglan.tablo_cek("select * from iletisim where mail='" + email + "' and durumu='0'");
        if (tbl.Rows.Count > 0)
        {
            lbl_mesaj.Text = "";

        }
        else
        {
            baglan.islem_yap("insert into iletisim (adi,soyadi,mail,mesaj,durumu,tarih) values('" + adi + "','" + soyadi + "','" + email + "','" + mesaj + "','0','" + tarih + "') ");

            lbl_mesaj.Text = "Mesajını başarı ile aldık.";
            txt_soyad.Text = "";
            txt_ad.Text = "";
            txt_mail.Text = "";
            txt_mesaj.Text = "";
        }
    }
}