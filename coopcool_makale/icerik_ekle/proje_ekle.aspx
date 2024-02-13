<%@ Page Title="" Language="C#" MasterPageFile="~/cool_makale.master" AutoEventWireup="true" CodeFile="proje_ekle.aspx.cs" Inherits="proje_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    <style> 

}
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
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
            <h1 >Proje Ekleme</h1>
            <p >
                İşte beklediğimiz hareket ツ
                girişimini, projeni kullanıcılarla buluşturmak için seni burada görmek ne hoş!
            </p>                  
            <h4><strong >Bu alanı ne kadar düzgün doldurursan projenin yayınlanma şansı da o kadar artar!</strong></h4>
            <fieldset>
                <asp:Label ID="lbl_adi" runat="server" Text="Adınız" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_adi" runat="server" class="form-control mr-sm-2" style="height:100%;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                          ControlToValidate="txt_adi" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </fieldset>
          <fieldset>
                <asp:Label ID="lbl_soyadi" runat="server" Text="Soyadınız" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_soyadi" runat="server" class="form-control mr-sm-2" style="height:100%;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                          ControlToValidate="txt_soyadi" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </fieldset>
        <fieldset>
                <asp:Label ID="lbl_mail" runat="server" Text="Mail Adresiniz" placeholder="example@coopcool.com" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_mail" runat="server" class="form-control mr-sm-2" style="height:100%;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                          ControlToValidate="txt_mail" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </fieldset>
            <fieldset>
                <asp:Label ID="lbl_tag" runat="server" Text="Projeninizi Tanımlayacak Taglar **" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_tag" runat="server" class="form-control mr-sm-2"  style="height:100%;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                          ControlToValidate="txt_tag" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </fieldset>
         
       
            <fieldset>
                <asp:Label ID="lbl_proje_alani" runat="server" Text="Proje Alanı **"  Style="color: crimson" ></asp:Label>
                <asp:TextBox ID="txt_proje_alani" runat="server"   placeholder=" Bilişim, Spor, Sağlık Vs." class="form-control mr-sm-2" style="height:100%;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                          ControlToValidate="txt_proje_alani" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </fieldset>
       
        
            <fieldset>
                <asp:Label ID="lbl_proje_baslik" runat="server" Text="Projenizin Başlığı **" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_proje_baslik" runat="server" class="form-control mr-sm-2" style="height:100%;"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                          ControlToValidate="txt_proje_baslik" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </fieldset>
      
            <fieldset>
                <asp:Label ID="lbl_proje_icerik" runat="server" Text="Projenizin İçeriği **" Style="color: crimson"></asp:Label>
                <asp:TextBox ID="txt_proje_icerik" runat="server" class="form-control mr-sm-2" Height="149px" TextMode="MultiLine"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                          ControlToValidate="txt_proje_icerik" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </fieldset>
            </div>
            <div class="col-md-3 col-md-offset-9">
            <fieldset>
                <br />
                <asp:Button ID="btn_proje_ekle" runat="server" Text="Coopcoolda Yazar Olmak İstiyorum"  class="btn-default" style="height: 47px; border:none; " OnClick="btn_proje_ekle_Click"  />
                <asp:Label ID="lbl_mesaj"  runat="server" Text="** ile seçili alanlar zorunludur." Style="color: crimson"></asp:Label>
               <br />
                <br />
                <br/>
            </fieldset>
                </div>
            </div>

       
  </div>
        <br />
        <br />   
         
    <%--Google analytics detaylandırılmış izleme kodları başlangıç--%>
    <%--Demografi ve İlgi Alanı Raporlarını Etkinleştir--%>
 <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('send', 'pageview');</script>
 
 
<%--Geliştirilmiş bağlantı ilişkilendirme kullan--%>
<script type="text/jscript">(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('require', 'linkid'); ga('send', 'pageview');</script>   
    <script type="text/javascript" src="http://app.winwords.adhood.com/174694,100,600"></script>          
     
</asp:Content>

