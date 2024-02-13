<%@ Page Title="" Language="C#" MasterPageFile="~/cool_makale.master" AutoEventWireup="true" CodeFile="video_pano.aspx.cs" Inherits="video_pano" %>

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
        div{
            word-wrap: break-word;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        		
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				 <div class="col-md-8">				
					<div class="row">
						<!-- post -->
                        <asp:Repeater ID="rpt_video" runat="server">
                            <ItemTemplate>
						<div class="col-md-6 ">
							<div class="post">
								<a class="post-img" href='<%#string.Format("/Blog/{0}",Eval("url")) %>'></a>
                                 <iframe id="youtubem" width="100%" height="230px" src= <%# Eval("resim_yol_kucuk")%> frameborder="0" allowfullscreen runat="server" />
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
						<div class="clearfix visible-md visible-lg"></div>
					</div>                 					
					<div class="section-row loadmore text-center">
                      <%--  <asp:Button ID="btn_video_getir" runat="server" Text="Daha Fazla Gör" Style="width:200px; height:40px;" BorderStyle="None" />--%>
					</div>
				</div>
				<div class="col-md-4">
				
					<div class="aside-widget text-center">
						<a href="#" style="display: inline-block;margin: auto;">
							<img class="img-responsive" src="./img/ad-3.jpg" alt="">
						</a>
					</div>					
					<div class="aside-widget">
						
						<div class="social-widget">
                        <a href="https://www.coopcool.com/CoolaHosgeldiniz"><img style="height=100%; width:100%; " src="img/sos_ban2.jpg"/> </a>
						</div>
					</div>					
					<div class="aside-widget">
						<div class="section-title">
							<h2 class="title">Kategoriler</h2>
						</div>
						<div class="category-widget">											
                                <asp:Repeater ID="rpt_kategori" runat="server"  >                                   
                        <ItemTemplate>
                        <div >
							<ul>
								<li><a href="#"><%#Eval("kategori_adi") %> <span>100+</span></a></li>								
							</ul>						
					</div>
                      </ItemTemplate>                                           
                                  </asp:Repeater>										       						
						</div>
					</div>
					<div class="aside-widget">
                        <div class="section-title">
                            <h2 class="title">Bizden Haberdar Ol!</h2>
                        </div>
                        <div>
                           <p>En ilgi çekici haberlerden, projelerden haberdar olmak istiyorsan bizimle mail adresini paylaş.</p>
                                <asp:TextBox ID="txt_bildirim" class="active" runat="server" style="height:48px; background-color:white !important;"></asp:TextBox>
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
					<div class="aside-widget text-center">
						<a href="#" style="display: inline-block;margin: auto;">
							<img class="img-responsive" src="./img/ad-1.jpg" alt="">
						</a>
					</div>				
				</div>
			</div>		
		</div>
	</div>  
</asp:Content>

