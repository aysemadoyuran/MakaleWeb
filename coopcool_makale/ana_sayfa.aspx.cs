using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vtislemlerilib;
using System.Data;
using System.Data.SqlClient;


public partial class icerik_ana_sayfa : System.Web.UI.Page
{
    vtbaglanti baglan = new vtbaglanti();
    DataTable tbl = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        kategori();
        ilgi_cekenler();
        video_icerik();
        random_makale();
        en_yeni();
        bas_makale();
        
    }
    public void bas_makale()
    {
        string baslik = ltr_baslik.Text;
        string kategori = ltr_kategori_buyuk.Text;
        string yazar = ltr_yazar.Text;
        //string tarih = ltr_tarih.Text;
        tbl = baglan.tablo_cek("select ana_kategori,baslik,tarih,yazar,resim_yol_buyuk from makale  where resim_yol_buyuk is Not Null and resim_yol_kucuk=''  ORDER BY NEWID()");
        ltr_kategori_buyuk.Text= tbl.Rows[0]["ana_kategori"].ToString();
        ltr_baslik.Text= tbl.Rows[0]["baslik"].ToString();
        ltr_yazar.Text= tbl.Rows[0]["yazar"].ToString();
        resim1.Src = tbl.Rows[0]["resim_yol_buyuk"].ToString();
        //ltr_tarih.Text= tbl.Rows[40]["tarih"].ToString();

        ltr_kategori_kucuk.Text = tbl.Rows[1]["ana_kategori"].ToString();
        ltr_baslik_kucuk.Text = tbl.Rows[1]["baslik"].ToString();
        ltr_kucuk_yazar.Text = tbl.Rows[1]["yazar"].ToString();
        resim2.Src = tbl.Rows[1]["resim_yol_buyuk"].ToString();

        ltr_kategori_kucuk_2.Text = tbl.Rows[2]["ana_kategori"].ToString();
        ltr_kucuk_baslık_2.Text = tbl.Rows[2]["baslik"].ToString();
        ltr_kucuk_yazar_2.Text = tbl.Rows[2]["yazar"].ToString();
        resim3.Src = tbl.Rows[2]["resim_yol_buyuk"].ToString();
    }
    
    public void en_yeni()
    {
        tbl = baglan.tablo_cek(" select top 4 ana_kategori,yazar,baslik,tarih,resim_yol_buyuk from makale ORDER BY id desc  ");
        if (tbl.Rows.Count>0)
        {
            rpt_en_yeniler.DataSource = tbl;
            rpt_en_yeniler.DataBind();
        }
    }
    public void kategori()
    {
        tbl = baglan.tablo_cek("select * from kategoriler where ana_kategori_id='0' order by id desc ");
        rpt_kategori.DataSource = tbl;
        rpt_kategori.DataBind();
    }
    public void ilgi_cekenler()
    {
        DataTable tablo = new DataTable();
        tbl = baglan.tablo_cek("SELECT TOP 4  ana_kategori,baslik from (SELECT TOP 100 * FROM makale ORDER BY okunma_sayi asc) AS X ORDER BY NEWID() ");
        if (tbl.Rows.Count > 0)
        {
            rpt_ilgi_cekenler.DataSource = tbl;
            rpt_ilgi_cekenler.DataBind();


        }
    }

    public void video_icerik()
    {
        tbl = baglan.tablo_cek("select  top 8 resim_yol_kucuk,url,baslik from makale where resim_yol_kucuk!=''  ORDER BY NEWID() ");
        if (tbl.Rows.Count > 0)
        {
            rpt_video.DataSource = tbl;
            rpt_video.DataBind();
        }
    }
    public void random_makale()
    {
        tbl = baglan.tablo_cek("select top 7 ana_kategori,baslik,tarih,yazar,resim_yol_buyuk from makale where resim_yol_buyuk is Not Null and resim_yol_kucuk='' ORDER BY NEWID()");
        if (tbl.Rows.Count > 0)
        {
            rpt_random_makale.DataSource = tbl;
            rpt_random_makale.DataBind();
        }
    }

}
   
