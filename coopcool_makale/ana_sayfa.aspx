<%@ Page Title="" Language="C#" MasterPageFile="cool_makale.master" AutoEventWireup="true" CodeFile="ana_sayfa.aspx.cs" Inherits="icerik_ana_sayfa" %>

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
     <link rel="shortcut icon" type="image/png" href="img/cool_logo_orjina_beyaz.png"/>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
	<div class="section">
		<div class="container">	
            <div id="hot-post" class="row hot-post">
				<div class="col-md-8 hot-post-left">
					<!-- 1 Tane 8 Birimlik Alana Random Makale Gelecek -->
					<div class="post post-thumb">
						<a class="post-img" href="makale_detay.aspx">
                            <img id="resim1" runat="server" src="img/Untitled-2.jpg" /></a>
						<div class="post-body">
							<div class="post-category">
								<a href="#"> <asp:Literal ID="ltr_kategori_buyuk" runat="server"></asp:Literal></a>
							</div>
							<h3 class="post-title title-lg"><a href="makale_detay.aspx?id=1000"> <asp:Literal ID="ltr_baslik" runat="server"></asp:Literal></a></h3>
							<ul class="post-meta">
								<li><a href="#"></a> <asp:Literal ID="ltr_yazar" runat="server"></asp:Literal></li>
								<%--<li><asp:Literal ID="ltr_tarih" runat="server"></asp:Literal></li>--%>
							</ul>
						</div>
					</div>
					<!-- /post -->
				</div>
				<div class="col-md-4 hot-post-right">
					<!--2 Tane 4 birimlik Random Makale -->
					<div class="post post-thumb">
						<a class="post-img" href="makale_detay.aspx">  <img id="resim2" runat="server" src="img/Untitled-2.jpg" /> </a>
						<div class="post-body">
							<div class="post-category">
								<a href="#"><asp:Literal ID="ltr_kategori_kucuk" runat="server"></asp:Literal></a>
							</div>
							<h3 class="post-title"><a href="makale_detay.aspx"><asp:Literal ID="ltr_baslik_kucuk" runat="server"></asp:Literal></a></h3>
							<ul class="post-meta">
								<li><a href="#"> <asp:Literal ID="ltr_kucuk_yazar" runat="server"></asp:Literal></a></li>
							<%--	<li><asp:Literal ID="ltr_tarih_kucuk" runat="server"></asp:Literal></li>--%>
							</ul>
						</div>
					</div>
					<!-- /post -->

					<!-- post -->
					<div class="post post-thumb">
						<a class="post-img" href="makale_detay.aspx">  <img id="resim3" runat="server" src="img/Untitled-2.jpg" /></a>
						<div class="post-body">
							<div class="post-category">
								<a href="#"><asp:Literal ID="ltr_kategori_kucuk_2" runat="server"></asp:Literal></a>
							</div>
							<h3 class="post-title"><a href="makale_detay.aspx">
                                <asp:Literal ID="ltr_kucuk_baslık_2" runat="server"></asp:Literal></a></h3>
							<ul class="post-meta">
								<li><a href="#">
                                    <asp:Literal ID="ltr_kucuk_yazar_2" runat="server"></asp:Literal></a></li>
							<%--	<li><%#Eval("tarih") %></li>--%>
							</ul>
						</div>
					</div>
					<!-- /post -->
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">				
					<div class="row">
						<div class="col-md-12">
							<div class="section-title">
								<h2 class="title">En Yeniler</h2>
							</div>
						</div>
                        <!-- 4 Tane Yeni Eklenen Makale -->                      
                        <asp:Repeater ID="rpt_en_yeniler" runat="server">
                            <ItemTemplate>
						<div class="col-md-6">
							<div class="post">
					<a class="post-img" href=<a href='#'><img src=<%#Eval("resim_yol_buyuk") %> alt=<%#Eval("baslik") %> ></a>                             
                               
								<div class="post-body">
									<div class="post-category">
										<a href="#"><%#Eval("ana_kategori")%></a>
									</div>
									<h3 class="post-title"><a href="makale_detay.aspx"><%#Eval("baslik") %></a></h3>
									<ul class="post-meta">
										<li><a href="#"><%#Eval("yazar") %></a></li>
										<li><%#Eval("tarih")%></li>
									</ul>
								</div>
							</div>
						</div>
                                </ItemTemplate>
						</asp:Repeater>
			
						<div class="clearfix visible-md visible-lg"></div>					
					</div>										
					<div class="row">
						<div class="col-md-12">
							<div class="section-title">
								<%--<h2 class="title">En Çok Okunanlar</h2>--%>
							</div>
						</div>
                        <!-- 3 Tane En Çok Okunan Makale -->
                      <%--  <asp:Repeater ID="rpt_en_çok_okunan" runat="server"  >
                            <ItemTemplate>
						<div class="col-md-4">
							<div class="post post-sm">
								<a class="post-img" href="makale_detay.aspx"><img src= "/makale_resimler/<%#Eval("resim_yol_buyuk") %>" alt=""></a>                             
								<div class="post-body">
									<div class="post-category">
										<a href="kategori.aspx"><%# Eval("kategori") %></a>
									</div>
									<h3 class="post-title title-sm"><a href="makale_detay.aspx"><%#Eval("baslik") %></a></h3>
									<ul class="post-meta">
										<li><a href="#"><%#Eval("yazar") %></a></li>
										<li><%#Eval("tarih") %></li>
									</ul>
								</div>
							</div>
						</div>
                                </ItemTemplate>
                            </asp:Repeater>						--%>
					  
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<div class="section-title">
								
                                <h2 class="title">Liseli Gençlerin Projeleri</h2> 
                                <!--Buraya Altı Adet Çekilecek, Her 6 random gelebilir. Proje Şuan Olmadığından Burası Böyle Kalacak-->
							</div>
						</div>
                        <div class="col-md-12">
                           <a href="../icerik_ekle/proje_ekle.aspx"> <img src="img/proje.jpg" style="width:100%; height:90%;" /></a>
                        </div>
                        <%--<asp:Repeater ID="rpt_proje" runat="server">
                        <ItemTemplate>
						<div class="col-md-4">
							<div class="post post-sm">
								 <a class="post-img" href="makale_detay.aspx"><img src="img/hot-post-1.jpg" /> alt=""></a>
								<div class="post-body">
									<div class="post-category">
										<a href="#"><%#Eval("kategori") %></a>
									</div>
									<h3 class="post-title title-sm"><a href="makale_detay.aspx"><%#Eval("baslık") %></a></h3>
									<ul class="post-meta">
										<li><a href="#"><%#Eval("ekleyen_kisi") %></a></li>
										<li></li>
									</ul>
								</div>
							</div>
						</div>
						</ItemTemplate>
					</asp:Repeater>--%>
					  
					</div>
                    <!-- Bu alana 6 tane random makale-->
                    <asp:Repeater ID="rpt_random_makale" runat="server">
                        <ItemTemplate>
                            <div class="post post-row">
						<a class="post-img" href="makale_detay.aspx"><img src=<%#Eval("resim_yol_buyuk") %> alt=<%#Eval("baslik") %> ></a>                           
						<div class="post-body">
							<div class="post-category">
								<a href="#"><%#Eval("ana_kategori") %></a>
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
					<!-- Reklam  Alanı-->
					<div class="aside-widget text-center">
						<a href="#" style="display: inline-block;margin: auto;">
							<img class="img-responsive" src="/img/ad-3.jpg" alt="">
						</a>
					</div>
					
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Sosyal Lİselİ Bölümü</h2>
						</div>
						<div class="social-widget">
                            <a href="https://www.coopcool.com/CoolaHosgeldiniz"><img style="height:100%; width:100%; " src="/img/sos_ban2.jpg" alt="Coop Cool Sosyal Liseli" /> </a>
						</div>
					</div>
					
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Tüm KategorİlerİN İçerİklerİ</h2>
						</div>
                        <!--Buraya Makale Kategorileri Gelecek, Alt kategoriler üst kategorilerinin içine eklenecek--> 
                        <asp:Repeater ID="rpt_kategori" runat="server">
                            <ItemTemplate>
                                <div class="category-widget">
							<ul>
								<li><a href="makaleler.aspx"><%#Eval("kategori_adi") %> <span>100</span></a></li>								
							</ul>
						</div>
                            </ItemTemplate>
                        </asp:Repeater>
					</div>
					
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Bizden Haberdar Ol!</h2>
						</div>
						<div >
							
								<p>En ilgi çekici haberlerden, projelerden haberdar olmak istiyorsan bizimle mail adresini paylaş.</p>
                                <asp:TextBox ID="txt_bildirim" class="active" runat="server" style="height:48px; background-color:white !important;"></asp:TextBox>
                            <br />
                            <br />
                                <asp:Button ID="btn_bildirim_gönder" class="primary-button" runat="server" Text="Gönder" />															
						</div>
					</div>
					
                      <!-- 4 Tane ilginizi Çekebilecekler-->
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">İlgİnİzİ Çekebİlecekler</h2>
                          
						</div>
                        <asp:Repeater ID="rpt_ilgi_cekenler" runat="server">
                        <ItemTemplate>
						<div class="post post-widget">
							<a class="post-img" href="blog-post.html"><img src="/img/untitled-2.jpg" alt=""></a>
							<div class="post-body">
								<div class="post-category">
									<a href="#"><%#Eval("ana_kategori") %></>
								</div>
								<h3 class="post-title"><a href="makale_detay.aspx"> <%#Eval("baslik").ToString()%> </a></h3>
							</div>
						</div>
                            </ItemTemplate>
						</asp:Repeater>
					
					</div>
					
				</div>
			</div>
			
		</div>
		
	</div>
	

    <!-- Reklam Alanı-->
	<div class="section">
		
		<div class="container">
			
			<div class="row">
				
				<div class="col-md-12 section-row text-center">
					<a href="#" style="display: inline-block;margin: auto;">
						<img class="img-responsive" src="/img/ad-2.jpg" alt="">
					</a>
				</div>
				
			</div>
			
		</div>
		
	</div>
	

	<!-- Buraya Videolar Çekilecek -->
	<div class="section">
	
		<div class="container">
			
			<%--<div class="row">
                <asp:Repeater ID="rpt_son_videolar" runat="server">
                <ItemTemplate>
				<div class="col-md-4">
					<div class="section-title">
						<h2 class="title"></h2>
					</div>
					
					<div class="post">
						<a class="post-img" href="blog-post.html"><img src="/makale_resimler/<%#Eval("resim_yol_buyuk") %>" alt=""></a>
						<div class="post-body">
							<div class="post-category">								
								<a href="#"><%#Eval("kategori") %></a>
							</div>
							<h3 class="post-title"><a href="<%#string.Format("/{0}",Eval("url")) %>"><%#Eval("baslik") %></a></h3>
							<ul class="post-meta">
								<li><a href="#"><%#Eval("ekleyen_kisi") %></a></li>
								<li><%#Eval("eklenme_tarihi") %></li>
							</ul>
						</div>
					</div>
				
				</div>	
                    </ItemTemplate>	
                    </asp:Repeater>		
			</div>--%>
			

			<!-- row/buraya geri kalan videolar gelecek.-->
			<div class="row">
                <h2 class="title">Video İçeriklerimiz</h2>
                <asp:Repeater ID="rpt_video" runat="server">
                            <ItemTemplate>
						<div class="col-md-3 ">
							<div class="post">
								<a class="post-img" href='<%#string.Format("/Blog/{0}",Eval("url")) %>'></a>
                                 <iframe id="youtubem" width="100%" height="200px" src= <%# Eval("resim_yol_kucuk")%> frameborder="0" allowfullscreen runat="server" />
								<div class="post-body" style="background-color:#E9EBEC; height:100px;" >
									 <a href='<%#string.Format("/Blog/{0}",Eval("url")) %>'><asp:Label ID="lbl_baslık" runat="server" Text='<%#Eval("baslik") %>' style="font-family:Arial, Helvetica, sans-serif; font-style:normal; font-size:large; " Font-Bold="True"></asp:Label></a>									
                                   <br />                                    
                                    <ul class="post-meta">
                                        <%--<asp:Label ID="lbl_video_ad" runat="server" Text='<%# Eval ("yazar") %>' style="color:#606469"></asp:Label>	
                                         <asp:Label ID="lbl_video_tarih" runat="server" Text=<%#  Eval ("tarih") %> style="color:#606469"></asp:Label>	--%>								
										
									</ul>
								</div>
							</div>
						</div>
                                </ItemTemplate>
                            </asp:Repeater>		
				
                <br />
                <br />
                 <br />
                <br />
                
                <br />
                <br />
                 <br />
                <br />
                
			
		</div>
		
	</div>	
      <%--Demografi ve İlgi Alanı Raporlarını Etkinleştir--%>
 <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('send', 'pageview');</script>
<%--ikinci kullanıcı idsi--%>
     <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-79512298-1', 'auto'); ga('send', 'pageview');</script>
 
 
<%--Geliştirilmiş bağlantı ilişkilendirme kullan--%>
<script type="text/jscript">(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('require', 'linkid'); ga('send', 'pageview');</script>   
    <script type="text/javascript" src="http://app.winwords.adhood.com/174694,100,600"></script>   
</asp:Content>

