<%@ Page Title="" Language="C#" MasterPageFile="~/cool_makale.master" AutoEventWireup="true" CodeFile="onbirinci_sinif.aspx.cs" Inherits="onbirincii_sinif" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-2">  
     <ul class="list-group"> 
     <li class="list-group-item list-group-item-success"><a href="dokuzuncu_sinif.aspx">9. Sınıf Dersleri</a></li>
     <li class="list-group-item list-group-item-info"><a href="onuncu_sinif.aspx">10. Sınıf Dersleri</a></li>
     <li class="list-group-item list-group-item-success"><a href="onbirinci_sinif.aspx">11. Sınıf Dersleri</a></li>
     <li class="list-group-item list-group-item-info"><a href="onikinci_sinif.aspx">12. Sınıf Dersleri</a></li>
     <li class="list-group-item list-group-item-success"><a href="meslek_dersleri.aspx">Meslek Dersleri</a></li> 
     </ul>
            </div>       
    <div class="col-md-10">
        <asp:Repeater ID="rpt_onbirinci_sinif_ders" runat="server">
            <ItemTemplate>
         <div class="col-md-2">
			<div class="post">
				<a class="post-img" href="yazili_sorular.aspx"><img src="../img/1.jpg" alt=""></a>
					<div class="post-body" style="background-color:#E9EBEC; height:auto;">
						<a href="yazili_sorular.aspx"><asp:Label ID="lbl_ders" runat="server" Text=<%#Eval("dersler") %> style="font-family:Arial, Helvetica, sans-serif; font-style:normal; font-size:large; " Font-Bold="True"></asp:Label></a>	                                                                      															
								
			        </div>
		    </div>            
         </ItemTemplate>
            </asp:Repeater>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tum_islemlerConnectionString %>" SelectCommand="SELECT [kategori] FROM [kategori]"></asp:SqlDataSource>
    </div>
                </div>
     </div>
    <br />
           <br />								
           <br />  
           <br />
           <br />								
           <br />  
           <br />
           <br />								
           <br />  
           <br />
           <br />								
           <br />  
           <br />
           <br />								
           <br />  
           <br />
           <br />								
           <br />  
     <%--Google analytics detaylandırılmış izleme kodları başlangıç--%>
    <%--Demografi ve İlgi Alanı Raporlarını Etkinleştir--%>
 <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('send', 'pageview');</script>
 
 
<%--Geliştirilmiş bağlantı ilişkilendirme kullan--%>
<script type="text/jscript">(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('require', 'linkid'); ga('send', 'pageview');</script>   
    <script type="text/javascript" src="http://app.winwords.adhood.com/174694,100,600"></script>         
</asp:Content>

