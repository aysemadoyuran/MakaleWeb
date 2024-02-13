using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vtislemlerilib;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Web.UI.HtmlControls;
public partial class video_pano : System.Web.UI.Page
{
    vtbaglanti baglan = new vtbaglanti();      
    DataTable tbl = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl = baglan.tablo_cek("select resim_yol_kucuk,url,baslik from makale where resim_yol_kucuk!=''  ORDER BY NEWID() ");
        if (tbl.Rows.Count > 0)
        {
            rpt_video.DataSource = tbl;
            rpt_video.DataBind();
        }
        else
        {
           
        } 

        tbl = baglan.tablo_cek("select * from kategoriler where ana_kategori_id='0' order by id desc ");
        rpt_kategori.DataSource = tbl;
        rpt_kategori.DataBind();


    }
}