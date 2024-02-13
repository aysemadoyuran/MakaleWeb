<%@ Page Title="" Language="C#" MasterPageFile="~/cool_makale.master" AutoEventWireup="true" CodeFile="yazi_ekleme.aspx.cs" Inherits="yazi_ekleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" href="/img/cool_logo_orjina_beyaz.png" type="image/x-icon" />
    <meta name="content-language" content="tr-TR" />
    <meta name="description" content="Bilgi Belge Paylasim Ortami Coopcool" />
    <meta name="author" content="Erkan Daştan,Tuğçe Songül Özkan, Coopcool.com" />
    <meta name="copyright" content="CoopCool | 2016 | Tüm Hakları Saklıdır." />
    <meta name="distribution" content="Global" />
    <meta name="revisit-after" content="1 days" />
    <meta name="robots" content="index,follow,archive,all" />
    <meta name="keywords" content="Coopcool,sosyal liseliiblog" />
    <!-- jQuery Plugins -->
    <script src="/js/script.js"></script>
    <script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.stellar.min.js"></script>
	<script src="/js/main.js"></script>
	<title>BilDiyorum</title> 
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome Icon -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom stlylesheet -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-1">
                  <ul class="list-group"> 
                  <li class="list-group-item list-group-item-success"><a href="yazi_ekleme.aspx">Yazı Ekle</a></li>
                      <br />
                  <li class="list-group-item list-group-item-info"><a href="proje_ekle.aspx">Proje Ekle</a></li>
                  </ul>
            </div>
            <div class="col-md-11">     
         <h1 >Yazı Ekle</h1>
            <p >
                İşte beklediğimiz hareket ツ
Şahsına münhasır makaleni-yazını-şiirini kullanıcılarla buluşturman için seni burada görmek ne hoş!

Senin değerli vaktinin bizim için ayrılan kısmında, aşağıdaki adımları izlemeni ve en geç 2 gün içerisinde sana dönmemizi beklemeni rica ediyoruz, Hoşça'kal... ツ
            </p>
  
      
            <h4><strong >Bu alanı ne kadar düzgün doldurursan yazının yayınlanma şansı da o kadar artar!</strong></h4>
            <fieldset>
                <asp:Label ID="lbl_ad" runat="server" Text="Adınız " Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_ad" class="form-control mr-sm-2" runat="server" style="height:46px;"></asp:TextBox>
            </fieldset>
                <fieldset>
                <asp:Label ID="lbl_soyadi" runat="server" Text="Soyadınız " Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_soyadi" class="form-control mr-sm-2" runat="server" style="height:46px;"></asp:TextBox>
            </fieldset>

      
            <fieldset>
                <asp:Label ID="lbl_mail" runat="server" Text="Mail Adresiniz **" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_mail" runat="server" class="form-control mr-sm-2" placeholder="example@coopcool.com" style="height:46px;"></asp:TextBox>
            </fieldset>
         
            <fieldset>
                <asp:Label ID="lbl_baslik" runat="server" Text="Yazının Başlığı **" Style="color: crimson" ></asp:Label>
                <asp:TextBox ID="txt_baslik" runat="server" class="form-control mr-sm-2" style="height:46px;"></asp:TextBox>
            </fieldset>
         
            <fieldset>
                <asp:Label ID="lbl_kategori" runat="server" Text="Yazını Hangi Kategoriye Eklemek İstersin? **" Style="color: crimson"></asp:Label>
                <asp:DropDownList ID="drp_kategori" runat="server" class="form-control mr-sm-2" Height="46px" placeholder="Kategori Seçiniz" ></asp:DropDownList>
               
            </fieldset>
          
         
            <fieldset>
                <asp:Label ID="lbl_anahtar_kelime" runat="server" Text="Yazını Tanıtacak Anahtar Kelimelerin Nelerdir? **" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_anahtar_kelime" runat="server" class="form-control mr-sm-2" placeholder=" Aşağıdaki bilgilendirmeyi okumadan işlem yapmayınız." style="height:46px;"></asp:TextBox>
                <strong>
                    <asp:Label ID="lbl_kelime_bilgi" runat="server" Text="* Bu alana yazını en iyi şekilde ifade edecek kelime veya kelime gruplarını virgül ile ayırarak yazmalısın. Örneğin Coopcool ile ilgili bir yazı yazıyorsan: Coopcool,coolcool okul, coopcool liseli, coopcool yazarlar köşesi gibi anahtar kelimeler ile ifade etmelisin. 4-5 adet yeterli olacaktır. Dikkat! Anahtar kelimelerin yazının içinde geçen kelimelerden oluşmalıdır. Aksi takdirde dikkate alınmayacaksınız."></asp:Label>
                </strong>
            </fieldset>
          
            <fieldset>
                <asp:Label ID="lbl_yazi" runat="server" Text="Yazınızı Giriniz **" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_yazi" runat="server" class="form-control mr-sm-2" Height="149px" TextMode="MultiLine"></asp:TextBox>
            </fieldset>
           
            <div class="col-md-4 col-md-offset-8">
            <fieldset>
                <asp:Button ID="btn_gonder" runat="server" Text="Coopcoolda Yazar Olmak İstiyorum"  class="btn-default" style="height: 47px; border:none; " OnClick="btn_gonder_Click" />
                <asp:Label ID="lbl_mesaj"  runat="server" Text="** ile seçili alanlar zorunludur." Style="color: crimson"></asp:Label>
               <br />
                <br />
                <br/>
            </fieldset>
                </div>
                </div>
            </div>
            </div>
    
    
        <script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
 <%--Google analytics detaylandırılmış izleme kodları başlangıç--%>
    <%--Demografi ve İlgi Alanı Raporlarını Etkinleştir--%>
 <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('send', 'pageview');</script>
 
 
<%--Geliştirilmiş bağlantı ilişkilendirme kullan--%>
<script type="text/jscript">(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('require', 'linkid'); ga('send', 'pageview');</script>   
    <script type="text/javascript" src="http://app.winwords.adhood.com/174694,100,600"></script>         
</asp:Content>

