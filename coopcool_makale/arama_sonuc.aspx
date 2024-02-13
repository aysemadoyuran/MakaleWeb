<%@ Page Title="" Language="C#" MasterPageFile="~/cool_makale.master" AutoEventWireup="true" CodeFile="arama_sonuc.aspx.cs" Inherits="arama_sonuc" %>

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
     <!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-8">
					<asp:Repeater ID="rpt_aranan">
                        _makale" runat="server">
                        <ItemTemplate>
                            <div class="post post-row">
						<a class="post-img" href="makale_detay.aspx"><img src="/makale_resimler/<%#Eval("resim_yol_buyuk") %>" alt=""></a>                           
						<div class="post-body">
							<div class="post-category">
								<a href="#"><%#Eval("kategori") %></a>
							</div>
							<h3 class="post-title"><a href="makale_detay.aspx"><%#Eval("baslik") %></a></h3>
							<ul class="post-meta">
								<li><a href="#"><%#Eval("yazar") %></a></li>
								<li><%#Eval("tarih") %></li>
							</ul>
							<a href="makale_detay.aspx">Okumak İçin Tıklayınız...</a>
						</div>
					</div>
                        </ItemTemplate>
                    </asp:Repeater>
					
                </div>

				<div class="col-md-4">
					<!-- ad widget -->
					<div class="aside-widget text-center">
						<a href="#" style="display: inline-block;margin: auto;">
							<img class="img-responsive" src="./img/ad-3.jpg" alt="">
						</a>
					</div>
					<!-- /ad widget -->

					<!-- social widget -->
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Sosyal Medya</h2>
						</div>
						<div class="social-widget">
							 <a href="https://www.coopcool.com/CoolaHosgeldiniz"><img style="height=100%; width:100%; " src="img/sos_ban2.jpg"/> </a>
						</div>
					</div>
					<!-- /social widget -->

					<!-- category widget -->
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Kategoriler</h2>
						</div>
						<div class="category-widget">
							<ul>
                                <asp:Repeater ID="rpt_kategori" runat="server">
                                    <ItemTemplate>
								<li><a href="makaleler_aspx"><%#Eval("kategori") %> <span><%#Eval("makale_sayisi") %></span></a></li>
                                        </ItemTemplate>
								</asp:Repeater>
							</ul>
						</div>
					</div>
					<!-- /category widget -->
                    <div class="aside-widget">
						<div class="section-title">
							<h2 class="title">İlgİnİzİ Çekebİlecekler</h2>
                            <div class="post post-widget">
                                
							<a class="post-img" href="makale_detay.aspx"><img src="/makale_resimler/<%#Eval("resim_yol_buyuk") %>" alt=""></a>
							<div class="post-body">
								<div class="post-category">
									<a href="#"><%#Eval("kategori") %></a>
								</div>
								<h3 class="post-title"><a href="makale_detay.aspx"><%#Eval("baslik") %></a></h3>
							</div>
						</div>
                                </div>
                          
						</div>
					<!-- newsletter widget -->
					<div class="aside-widget">
                        <div class="section-title">
                            <h2 class="title">Ara</h2>
                        </div>
                        <div>
                            <p>En ilgi çekici haberlerden, projelerden haberdar olmak istiyorsan bizimle mail adresini paylaş.</p>
                                <asp:TextBox ID="txt_bildirim" class="active" runat="server" style="height:48px;"></asp:TextBox>
                            <br />
                            <br />
                                <asp:Button ID="btn_bildirim_gönder" class="primary-button" runat="server" Text="Gönder" />		

                        </div>
                    </div>
				
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Sosyal Liseliye Göz At!</h2>
						</div>
						<div class="galery-widget">
							<ul>
								<li><a href="https://www.coopcool.com/Paylasim_Tekil/14874"><img src="./img/c1.png" alt=""></a></li>
								<li><a href="https://www.coopcool.com/Paylasim_Tekil/13204"><img src="./img/cl2.jpg" alt=""></a></li>                          
								<li><a href="https://www.coopcool.com/Paylasim_Tekil/14777"><img src="./img/c3.jpg" alt=""></a></li>
								<li><a href="https://www.coopcool.com/Paylasim_Tekil/14737"><img src="./img/c4.png" alt=""></a></li>
								<li><a href="https://www.coopcool.com/Paylasim_Tekil/13881"><img src="./img/cl5.png" alt=""></a></li>
								<li><a href="https://www.coopcool.com/Paylasim_Tekil/13478"><img src="./img/cl6.jpg" alt=""></a></li>
							</ul>
						</div>
					</div>
					<!-- /galery widget -->

					<!-- Ad widget -->
					<div class="aside-widget text-center">
						<a href="#" style="display: inline-block;margin: auto;">
							<img class="img-responsive" src="./img/ad-1.jpg" alt="">
						</a>
					</div>
					<!-- /Ad widget -->
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
		 <%--Google analytics detaylandırılmış izleme kodları başlangıç--%>
    <%--Demografi ve İlgi Alanı Raporlarını Etkinleştir--%>
 <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('send', 'pageview');</script>
 
 
<%--Geliştirilmiş bağlantı ilişkilendirme kullan--%>
<script type="text/jscript">(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('require', 'linkid'); ga('send', 'pageview');</script>   
    <script type="text/javascript" src="http://app.winwords.adhood.com/174694,100,600"></script>         
</asp:Content>

