<%@ Page Title="" Language="C#" MasterPageFile="~/cool_makale.master" AutoEventWireup="true" CodeFile="makale_detay.aspx.cs" Inherits="makale_detay" %>

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
					<!-- post share -->
					<div class="section-row">
						<div class="post-share">
							<a href="https://www.facebook.com" class="social-facebook"><i class="fa fa-facebook"></i><span>Paylaş</span></a>
							<a href="https://www.twitter.com" class="social-twitter"><i class="fa fa-twitter"></i><span>Paylaş</span></a>
							<a href="http://www.instagram.com" class="social-instagram"><i class="fa fa-instagram"></i><span>Paylaş</span></a>
							
						</div>
					</div>
					<!-- /post share -->

					<!-- post content -->
					<div class="section-row">
                        <figure class="pull-right">
                            <asp:Image ID="ımg_makale_detay" runat="server" />	
							<figcaption></figcaption>
						</figure>
						<h3>
                            <asp:Literal ID="ltr_baslik" runat="server"></asp:Literal> </h3>
						<p><asp:Literal ID="ltr_makale" runat="server"></asp:Literal></p>
						
						
					</div>
					<!-- /post content -->

					<!-- post tags -->
					<div class="section-row">
						<div class="post-tags">
							<ul>
								<li>TAGS:</li>
                                <asp:Repeater ID="rpt_tag" runat="server">
                                    <ItemTemplate>
								<li><a href="#">  <%# Eval("meta_tanitim").ToString()%></a></li>		
                                        </ItemTemplate>
                                </asp:Repeater>						
							</ul>
						</div>
					</div>
				
					<div>
						<div class="section-title">
							<h3 class="title">Diğer İçerikler</h3>
						</div>
						<div class="row">
                            <!-- 3 Tane Random Makale-->
                            <asp:Repeater ID="rpt_random_makale" runat="server">
                                <ItemTemplate>
							<div class="col-md-4">
								<div class="post post-sm">
									<a class="post-img" href="blog-post.html"><img src="/makale_resimler/<%#Eval("resim_yol_buyuk") %>" alt=""></a>
									<div class="post-body">
										<div class="post-category">
											<a href="#"><%#Eval("kategori") %></a>
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
                            </asp:Repeater>
							
						</div>
					</div>
					<!-- /related post -->

					<!-- post comments -->
					<div class="section-row">
						<div class="section-title">
							<h3 class="title">Yorumlar</h3>
						</div>
						<div class="post-comments">
							<!-- comment -->
							<div class="media">
								<div class="media-left">
                                    <asp:Repeater ID="rpt_yorum" runat="server">
                                        <ItemTemplate>
									<img class="media-object" src="./img/users.png" alt="">
								</div>
								<div class="media-body">
									<div class="media-heading">
										<h4><%#Eval("adi_soyadi") %></h4>
										<span class="time"><%#Eval("tarih") %></span>
									</div>
									<p><%#Eval("yorum") %></p>
                                   							
								</div>
                                </ItemTemplate>
                                </asp:Repeater>
							</div>
							
						</div>
					</div>					
			<div class="section-row">
						<div class="section-title">
							<h3 class="title">Yorum Yap</h3>
						</div>
						<form class="post-reply">
							<div class="row">
								
								<div class="col-md-4">
									<div class="form-group">
										<asp:TextBox ID="txt_adi" runat="server" style="height:40px;" placeholder="Adınız" ></asp:TextBox>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<asp:TextBox ID="txt_soyadi" runat="server" style="height:40px;" placeholder="Soyadınız" ></asp:TextBox>
									</div>
								</div>
                                <div class="col-md-12">
									<div class="form-group">
										<asp:TextBox ID="txt_yorum_mail" runat="server"  style="height:40px;" placeholder="Mail Adresiniz" ></asp:TextBox>
									</div>
								</div>
                                <div class="col-md-12">
									<div class="form-group">
										<asp:TextBox ID="txt_yorum" runat="server" TextMode="MultiLine" style="height:120px;" placeholder="Yorumunuz" ></asp:TextBox>
									</div>
								</div>
								
								<div class="col-md-12">
									<asp:Button ID="btn_gonder" runat="server" Text="Gönder" style="height:40px;" BorderStyle="None" />
                                    <br />
                                    <br />
								</div>

							</div>
						</form>
					</div>			
				</div>
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

