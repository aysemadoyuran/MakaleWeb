<%@ Page Title="" Language="C#" MasterPageFile="~/cool_makale.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

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
    
     <style type="text/css">
        .auto-style1 {
            margin-bottom: 37;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="contact" >
        <!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-8">
					<div class="section-row">
						<div class="section-title">
							<h2 class="title">Ooo, kimler gelmiş kimler! Coopcool'un İletişim bölümünde seni gördüğümüze göre durum vahim, o halde 👎</h2>
						</div>
						<p>Biz seni hiç yolundan etmeyelim yaz bakalım Cool'a sorunun nedir, bizimle neden konuşmak istiyorsun </p>
						<ul class="contact">
							<li><i class="fa fa-phone"></i> 0 552 483 23 11 </li>
							<li><i class="fa fa-envelope"></i> <a href="#">bilgi@coopcool.com</a></li>							
						</ul>
					</div>

					<div class="section-row">
						<div class="section-title">
							<h2 class="title">Mesaj Gönder</h2>
						</div>
						<form>
							<div class="row">
                                <div class="col-md-12">
									<div class="form-group">
                                        <asp:TextBox ID="txt_ad" runat="server" placeholder="Adınız **" Height="45px"></asp:TextBox>	
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                          ControlToValidate="txt_ad" ErrorMessage="*Adınız Boş Geçilemez!" 
                                          ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
                                        <asp:TextBox ID="txt_soyad" runat="server" placeholder="Soyadınız **" Height="45px"></asp:TextBox>	
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                 ControlToValidate="txt_soyad" ErrorMessage="*Soyadınız Boş Geçilemez!" 
                                 ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
                                        <asp:TextBox ID="txt_mail" runat="server" placeholder="Mail Adresiniz **" Height="45px"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                  ControlToValidate="txt_mail" ErrorMessage="*Mail Boş Geçilemez!" 
                                 ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ControlToValidate="txt_mail" ErrorMessage="*E-mail formatında giriş yapınız!" 
                                 ForeColor="Red" 
                                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                 ValidationGroup="a"></asp:RegularExpressionValidator>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
                                        <asp:TextBox ID="txt_mesaj" placeholder="Mesajınız **" runat="server" TextMode="MultiLine" Height="74px"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                 ControlToValidate="txt_mesaj" ErrorMessage="*Boş Mesaj Gönderemezsiniz." 
                                 ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
									</div>									
                                    <asp:Button ID="btn_mail_gonder" runat="server" class="btn-default" Text="Gönder" Height="60px" style="border:none;" OnClick="btn_mail_gonder_Click"/>
                                    <asp:Label ID="lbl_mesaj" runat="server" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    <br />
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-4">
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

					<!-- newsletter widget -->
					<div class="aside-widget">
                        <div class="section-title">
                            <h2 class="title">Bizden Haberdar Ol!</h2>
                        </div>
                        <div>
                            <p>En ilgi çekici haberlerden, projelerden haberdar olmak istiyorsan bizimle mail adresini paylaş.</p>
                                <asp:TextBox ID="txt_bildirim" class="active" runat="server" style="height:48px; background-color:#ffffff;"></asp:TextBox>
                            <br />
                            <br />
                                <asp:Button ID="btn_bildirim_gönder" class="primary-button" runat="server" Text="Gönder" />
                        </div>
                    </div>
					<!-- /newsletter widget -->
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- jQuery Plugins -->
	
    </form>
 <%--Google analytics detaylandırılmış izleme kodları başlangıç--%>
    <%--Demografi ve İlgi Alanı Raporlarını Etkinleştir--%>
 <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('send', 'pageview');</script>
 
 
<%--Geliştirilmiş bağlantı ilişkilendirme kullan--%>
<script type="text/jscript">(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-87737821-1', 'auto'); ga('require', 'linkid'); ga('send', 'pageview');</script>   
    <script type="text/javascript" src="http://app.winwords.adhood.com/174694,100,600"></script>         
</asp:Content>

