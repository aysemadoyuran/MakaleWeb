using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vtislemlerilib;
using System.Data;

public partial class makale_detay : System.Web.UI.Page
{
    vtbaglanti baglan = new vtbaglanti();
    DataTable tbl = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        int aranan =Convert.ToInt32( Request.QueryString["id"].ToString());
        //  tbl = baglan.tablo_cek("SELECT *,convert(datetime,tarih, 0) as tam FROM makale where  resim_yol_buyuk is Not Null UNION SELECT *, convert(datetime,tarih, 0) as tam FROM yazili_sorular ORDER BY  tam desc");
        tbl = baglan.tablo_cek("SELECT top 20 * from makale where  order by id desc");
        ltr_baslik.Text = tbl.Rows[0]["baslik"].ToString();
        ltr_makale.Text = tbl.Rows[0]["icerik"].ToString();

    }
}