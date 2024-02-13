using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.SqlClient;

using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace vtislemlerilib
{
    public class vtbaglanti : Page
    {
            
        public SqlConnection baglantiac()//connection nesnesi oluşturuldu ve açıldı.geriye döndürüldü
        {

            SqlConnection baglan = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=pusu_cool_yedek;Integrated Security=True;");
            baglan.Open();
            return baglan;
        }
        public int islem_yap(string sqlcumle)//Command nesnesi oluşturuldu.Try Cath bloklarıyla olası hatalar alındı.
        {

            SqlConnection baglantiac = this.baglantiac();
            SqlCommand sorgu = new SqlCommand(sqlcumle, baglantiac);
            int sonuc = 0;

            try
            {
                sonuc = sorgu.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {

                throw new Exception(ex.Message + "(" + sqlcumle + ")");
            }
            sorgu.Dispose();
            baglantiac.Dispose();
            baglantiac.Close();
            return (sonuc);
        }
        public DataTable tablo_cek(string sqlcumle)// datatable oluşturuldu.Try cath bloklarıyla hatalar kontrol altına alındı.
        {
            SqlConnection baglantiac = this.baglantiac();
            SqlDataAdapter adapter = new SqlDataAdapter(sqlcumle, baglantiac);
            DataTable dt = new DataTable();

            try
            {
                adapter.Fill(dt);
            }
            catch (SqlException ex)
            {

                throw new Exception(ex.Message + "(" + sqlcumle + ")");
            }
            adapter.Dispose();
            baglantiac.Close();
            baglantiac.Dispose();
            return (dt);
        }










    }

  
}   

