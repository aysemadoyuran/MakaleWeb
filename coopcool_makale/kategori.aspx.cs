using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using vtislemlerilib;
using System.Data;

public partial class kategori : System.Web.UI.Page
{
    vtbaglanti baglan = new vtbaglanti();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        dt = baglan.tablo_cek("select * from kategoriler where ana_kategori_id='0' order by id desc ");
        rpt_kategori_page.DataSource = dt;
        rpt_kategori_page.DataBind();

    }
}