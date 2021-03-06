USE [yemektarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 27.3.2019 13:40:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiId] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](100) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 27.3.2019 13:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](2000) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 27.3.2019 13:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KategoriId] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 27.3.2019 13:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[Mesajid] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajGonderen] [varchar](50) NULL,
	[MesajBaslik] [varchar](30) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajIcerik] [varchar](350) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 27.3.2019 13:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[TarifId] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](50) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TarifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 27.3.2019 13:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[yemekid] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [tinyint] NULL,
	[KategoriId] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[yemekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 27.3.2019 13:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[YoneticiId] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 27.3.2019 13:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[YorumId] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdsoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[YorumIcerik] [varchar](500) NULL,
	[yemekid] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YorumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] ON 

INSERT [dbo].[Tbl_GununYemegi] ([GununYemegiId], [GununYemegiAd], [GununYemegiMalzeme], [GununYemegiTarif], [GununYemegiResim], [GununYemegiPuan], [GununYemegiTarih]) VALUES (1, N'Mücver', N'3 adet yumurta
 3 adet kabak
 Yarım su bardağı un
 2-3 dal yeşil soğan
 Yarım demek maydanoz
 Bir tutam dereotu
 Tuz
 Karabiber
 Pulbiber', N'1. İlk olarak mücver malzemelerini hazırlayalım. Kabakları soyarak rendenin iri kısmında rendeleyelim. Yeşil soğan, maydanoz ve dereotu minik minik doğrayalım.

2. Kabak Mücver harcını hazırlayalım. Yumurtaları derince bir kaba alalım un ilave edilerek pürüzsüz kıvam alana kadar çırpalım. Baharatları, suyunu iyice sıktığımız kabakları ve doğranmış dereotu, yeşil soğan ve maydanozu eklenerek karıştıralım. Mücver harcımız hazır.

3. Mücveri tavada pişirelim. Teflon tavaya az miktarda sıvı yağ alalım, kabak karışımından bir kaşık dökelim. Mücverlerin her iki yüzü de kızardıktan sonra havlu kağıt serilmiş tabağa alalım.

4. Kabak mücveri servis edelim Mücverleri ister sıcak, isterseniz soğuk olarak servis edebilirsiniz.

Afiyet olsun.', NULL, 7, CAST(N'2018-10-11T15:01:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] OFF
INSERT [dbo].[Tbl_Hakkimizda] ([Metin]) VALUES (N'İştah açan, ilham veren, ağız sulandıran... Sadece yemek tarifleri değil... Güldürürken yediren...

Yemek sitemiz, sevgilisini mutlu etmek için İtalyan mutfağını öğrenenin de, işi gücü bırakıp güneyde şarap üretmeyi, en olmadı Cihangir''de pilavcı açmayı hayal edenin de, övünerek anlatabildiği tek mutfak becerisi menemen olanın da, yurt dışına her çıkışında yemek yiyeceği yerlere göre otelini seçenin de, o gün yediği dev bir sufle için bütün hafta boyunca yediklerine dikkat etme zorunluluğu hissedenin de, yemeğin tadına bakmadan tuz atanın da, Instagram''a fotoğraf atabilmek için yemeğini soğutmayı göze alanın da sitesi.

Sadece karnını doyurmak isteyenler için değil, bir hazzın peşinde koşanlar için.

Farklı zevklerden ve renklerden gelen iştahlı ekibi ve dışarıdan katkı sağlayan birçok dostu ve partneri ile Yemek sitemiz kocaman, upuzun, rengarenk bir masa kurdu ve bu masada epey sandalye var.

Bu nefis masada sizin de bir sandalyeniz var. İster yazar olarak, ister okur olarak.

İyi ki geldiniz, yine gelin.')
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAdi], [KategoriAdet], [KategoriResim]) VALUES (1, N'Çorba', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAdi], [KategoriAdet], [KategoriResim]) VALUES (2, N'Sebze Yemekleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAdi], [KategoriAdet], [KategoriResim]) VALUES (3, N'Et Yemekleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAdi], [KategoriAdet], [KategoriResim]) VALUES (4, N'Makarna Çeşitleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAdi], [KategoriAdet], [KategoriResim]) VALUES (5, N'Tavuk Yemekleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAdi], [KategoriAdet], [KategoriResim]) VALUES (6, N'Pastalar', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAdi], [KategoriAdet], [KategoriResim]) VALUES (7, N'İçecekler', 1, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGonderen], [MesajBaslik], [MesajMail], [MesajIcerik]) VALUES (1, N'Mahmut Hamdan', N'Yemekler', N'mahmut@gmail.com', N'Harika bir site. Bu siteyi yapanda çooook güzel. Bu siteyi yapanın yaptığı yemeklerde çok güzel.')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([TarifId], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (1, N'mercimek', N'mercimek, havuç', N'deneme', N'3.jpg', N'dnm', N'dnm@hotmail.com', 0)
INSERT [dbo].[Tbl_Tarifler] ([TarifId], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (2, N'patlıcan kebabı', N'Köfte için:

500 gr orta yağlı kıyma
Yarım çay bardağı zeytinyağı
1 çay kaşığı karabiber
1 çay kaşığı pulbiber
Tuz
Sosu için:

1 yemek kaşığı salça
2 su bardağı sıcak su
Tuz
Üzeri için

4 adet domates
4-5 adet biber
10 adet arpacık soğan
6-7 diş sarımsak', N'Patlıcanları dilimleyip, tuzlu suda yarım saat bekletin.
Bu aşamada kıyma, baharatlar ve zeytinyağını güzelce yoğurun.
Üzerini kapatarak yarım saat kadar buz dolabında dinlendirin.
Dinlenen köfteleri ve suyunu süzüp bol su ile yıkadığınız patlıcanları ister tepsiye isterseniz şişe nasıl arzu ederseniz dizin.
Bir patlıcan bir köfte yan yana olacak şekilde sıralayın.
Domates, soğan, biber ve sarımsakları koyarak sıcak suda ezmiş olduğunuz salçalı suyu gezdirin.
Suyu tepsinin büyüklüğüne göre değişir ama yeterli gelmezse bir miktar daha sıcak su ilave edebilirsiniz.
Tepsinin üzerini folyo ile sarın ve 200 derece fırında pişmeye bırakın.
30-35 dk sonra kontrol edin patlıcan ve köfteler yumuşamış ise folyoyu alıp üzerleri kızarana kadar daha pişirin.
Afiyet olsun.', N'patlıcankebabı.jpg', N'ali kemal', N'ali@hotmail.com', 1)
INSERT [dbo].[Tbl_Tarifler] ([TarifId], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (3, N'ıslak kek', N'NULL3 adet
yumurta
1 su bardağı
toz şeker
1 su bardağı
süt
1 su bardağı
ayçiçek yağı
2 yemek kaşığı
kakao
1 paket
vanilya
1 su bardağı
un
+2 yemek kaşığı un1 paket
kabartma tozu
Kek kalıbını yağlamak için:1 yemek kaşığı
tereyağı
Sosu İçin:1 su bardağı
süt
1,5 yemek kaşığı
kakao
1/2 su bardağı
toz şeker
2 yemek kaşığı
sıvı yağ
1 tutam
tuz', N'Derin bir kasede yumurta ve şekeri, şeker eriyip, karışım krema kıvamına gelene kadar çırpın.

Ardından içerisine sütü, sıvı yağı ve vanilini koyup tekrar karıştırın.

Topak kalmaması için kakao, kabartma tozu ve unu süzgeçten geçirerek karışıma ekleyin ve son kez çırpın.

Yağlanmış, ısıya dayanıklı bir kabın içerisine karışımı dökdükten sonra önceden ısıtılmış 180 derece fırında yaklaşık 30 dakika pişirin.

Keki ıslatmak için bir sos tenceresinde su, süt, sıvı yağ, toz şeker, kakao ve bir tutam tuzu karıştırıp bir taşım kaynatın ve ocaktan alın.

Fırından çıkan kekin üzerine ocakta hazırladığımız sosu dökün ve çekmesini bekleyin.

Sosunu sünger gibi çeken iç kısmı yumuşacık ıslak keki dilimledikten sonr üzerine file badem serpiştirerek servis edin, sevdiklerinizle afiyetle tüketin', NULL, N'Tuna Yıldız', N'tuna@hotmail.com', 0)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (1, N'Köri Soslu Makarna', N'1/2 paket, makarna, (haşlanmış)1 paket, krema, 1 tatlı kaşığı, köri, 2 çay kaşığı, tuz, 1 çay kaşığı, karabiber, 1 yemek kaşığı, tereyağı, 2 parça, tavuk göğsü, 100 gram, parmesan (rendelenmiş)', N'Makarnayı haşlayın. Tavukları küp küp doğrayın. Tavayı ısıtın ve tereyağını eritin. Eriyen tereyağında tavukları kavurun. Köri, karabiber ve tuzu ilave edin. Kremayı ilave edin ve kısık ateşte pişirmeye ve kremayı yoğunlaştırmaya devam edin. Makarnayı ilave edin ve henüz sıcakken parmesan ekleyip tavada çevirin. Tabağa alın ve parmesan peyniri ilave edin. İşte bu kadar, afiyet olsun!', NULL, CAST(N'2018-10-13T22:38:00' AS SmallDateTime), 8, 4, 0)
INSERT [dbo].[Tbl_Yemekler] ([yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (2, N'Zeytinyağlı Barbunya', N'1 kilogram taze barbunya, 1/2 çay bardağı zeytinyağı, 1 adet orta boy kuru soğan, 2 diş sarımsak,
1 adet büyük boy patates, 2 adet orta boy havuç, 2 adet orta boy domates, 2 su bardağı sıcak su,
1 tatlı kaşığı domates salçası, 1 tatlı kaşığı toz şeker, 1 çay kaşığı tuz
', N'Kabuklarını ayıklayıp bol suda yıkadığınız barbunyaları üzerini geçecek kadar su ilavesiyle orta ateşte 10 dakika kadar haşlayın. Kuru soğanı rendenin ince tarafıyla rendeleyin. Sarımsakları ayıklayın, lezzet vermesi için bütün olarak bırakın. Kabuğunu soyduğunuz patates ve havuçları küçük küpler halinde doğrayın. Ortadan ikiye kesip uç kısımlarını aldığınız domatesleri rendeleyin. Zeytinyağını derin bir tencerede kızdırın. Rendelenmiş soğan ve sarımsakları katıp hafif bir renk alana kadar soteleyin. Patates ve havuç küplerini katıp kısa süre kavurun. Hafif renk vermesi için domates salçası ve rendelenmiş domatesleri katıp kısık ateşte pişmeye bırakın. Haşlanmış barbunyayı süzüp tencereye alın. Toz şeker, tuz ve sıcak suyu ekledikten sonra kısık ateşte barbunyalar yumuşayana kadar pişirin. Ocaktan aldığınız barbunyayı kapağı kapalı tencerede oda ısısına gelene kadar dinlendirin. Sonrasında derin bir servis kabına aktardığınız barbunyayı; arzuya göre üzerine gezdirdiğiniz sızma zeytinyağı, taze sıkılmış limon suyu, incecik kıyılmış maydanoz eşliğinde ılık ya da soğuk olarak sevdiklerinizle paylaşın.', N'~/Resimler/barbunya.jpg', CAST(N'2018-10-13T23:41:00' AS SmallDateTime), 7, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (3, N'Mercimek Çorbası', N'1 su bardağı kırmızı ya da sarı mercimek, 1 adet kuru soğan, 1 adet patates, 1 adet havuç, 1 yemek kaşığı un, 2 yemek kaşığı ayçiçek yağı, 6 su bardağı sıcak su, (1 adet et su tablet ile hazırlanmış)1 çay kaşığı tuz, 1 çay kaşığı karabiber', N'Kuru soğanı küçük küpler halinde doğrayın. Ayçiçek yağını derin bir tencerede kızdırın. Doğradığınız soğanları 2- 3 dakika kadar kavurun. Kavrulan soğanlara unu ekleyin ve kokusu çıkıp, renk alana kadar kavurma işlemini sürdürün. İri parçalar halinde doğradığınız patates ve havucu tencereye aktarın. Tüm malzemeyi karıştırdıktan sonra arzuya göre et su tablet ile hazırladığınız sıcak suyu ve bol suda yıkadıktan sonra suyunu süzdürdüğünüz mercimeği ilave edin. Tuz ve karabiberi ekleyin. Havuçlar yumuşayana kadar orta ateşte yaklaşık 40 dakika pişirin. Çorbayı, pürüzsüz bir kıvam alması için; el blenderından geçirdikten sonra sıcak olarak sevdiklerinizle paylaşın', N'~/Resimler/mercimek.jpg', CAST(N'2018-10-13T23:49:00' AS SmallDateTime), 9, 1, 1)
INSERT [dbo].[Tbl_Yemekler] ([yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (4, N'Patlıcan Dolması ', N'1 kg patlıcan
1 kg dolmalık biber
İçi için;

2 su bardağı pirinç
2 adet kuru soğan (ince doğranmış )
3 diş sarımsak
4 adet domates(büyük boy)
2 bağ maydanoz
1 yemek kaşığı biber salçası
1 yemek kaşığı domates salçası
Tuz, karabiber, nane, toz biber, kimyon
1 su bardağından 1 parmak eksik zeytin yağı
1 adet limon söndürmeye yakın sıkılıp üzerine dökülecek', N'İlk olarak patlıcanları oyup yıkayıp bekletiyoruz.
Sonra tüm iç malzemeler doğranıp sırası ile derin bir kapta karıştırılır.
Hazırladığımız içi patlıcan ve biberlere dolduruyoruz.
Çok dolu dolu olmasın piştiğinden pirinçler çoğaldığı için dolma içi tam doluyor ve eksik kalmıyor.
Doldurduğumuz sebzeleri tencereye yerleştiriyoruz ve üzerine göz kararı sıcak su ekleyip kısık ateşte pişiriyoruz.
Pişmeye yakın limonu döküp demlenene kadar ocakta kısık ateşte bırakıyoruz. Sıcak servis edip afiyet ile YİYİYORUZ ', NULL, CAST(N'2018-11-21T19:03:00' AS SmallDateTime), NULL, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (6, N'limonata', N'limon, şeker, su, buz', N'deneme', NULL, CAST(N'2018-11-22T15:51:00' AS SmallDateTime), NULL, 7, 0)
INSERT [dbo].[Tbl_Yemekler] ([yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (7, N'patlıcan kebabı', N'Köfte için:500 gr orta yağlı kıymaYarım çay bardağı zeytinyağı1 çay kaşığı karabiber1 çay kaşığı pulbiberTuzSosu için:1 yemek kaşığı salça2 su bardağı sıcak suTuzÜzeri için4 adet domates4-5 adet biber10 adet arpacık soğan6-7 diş sarımsak', N'Patlıcanları dilimleyip, tuzlu suda yarım saat bekletin.
Bu aşamada kıyma, baharatlar ve zeytinyağını güzelce yoğurun.
Üzerini kapatarak yarım saat kadar buz dolabında dinlendirin.
Dinlenen köfteleri ve suyunu süzüp bol su ile yıkadığınız patlıcanları ister tepsiye isterseniz şişe nasıl arzu ederseniz dizin.
Bir patlıcan bir köfte yan yana olacak şekilde sıralayın.
Domates, soğan, biber ve sarımsakları koyarak sıcak suda ezmiş olduğunuz salçalı suyu gezdirin.
Suyu tepsinin büyüklüğüne göre değişir ama yeterli gelmezse bir miktar daha sıcak su ilave edebilirsiniz.
Tepsinin üzerini folyo ile sarın ve 200 derece fırında pişmeye bırakın.
30-35 dk sonra kontrol edin patlıcan ve köfteler yumuşamış ise folyoyu alıp üzerleri kızarana kadar daha pişirin.
Afiyet olsun.', N'~/Resimler/patlıcankebabı.jpg', CAST(N'2019-01-10T14:25:00' AS SmallDateTime), NULL, 3, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdsoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [yemekid]) VALUES (1, N'ali dur', N'alidur@hotmil.com', CAST(N'2018-11-04T16:47:00' AS SmallDateTime), 1, N'mercimekler çiğ kaldı', 3)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdsoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [yemekid]) VALUES (2, N'veli gel', N'veligel@hotmail.com', CAST(N'2018-11-04T16:50:00' AS SmallDateTime), 0, N'tarif başarılı', 1)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdsoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [yemekid]) VALUES (3, N'emel yıldız', N'emelyıldız@hotmail.com', CAST(N'2018-11-04T16:52:00' AS SmallDateTime), 0, N'çorbaya bayıldım. tam istediğim gibi oldu. Çok teşekkür ederim', 3)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdsoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [yemekid]) VALUES (4, N'mehmet kaya', N'mehmet@hotmail.com', CAST(N'2018-11-08T14:30:00' AS SmallDateTime), 0, N'Harika oldu. Ellerinize sağlık.', 1)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdsoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [yemekid]) VALUES (5, N'ferhat hacı', N'ferhat@hotmail.com', CAST(N'2018-11-08T16:51:00' AS SmallDateTime), 0, N'ablam çok güzel yemekler yapar. Çünkü o bir prenses.', 1)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdsoyad], [YorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [yemekid]) VALUES (6, N'berat beyaz', N'berat@hotmail.com', CAST(N'2018-11-08T16:54:00' AS SmallDateTime), 1, N'barbunyadan nefret ederim öööğğk', 2)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
ALTER TABLE [dbo].[Tbl_GununYemegi] ADD  CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[Tbl_Kategoriler] ADD  CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Tbl_Tarifler] ADD  CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Tbl_Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([yemekid])
REFERENCES [dbo].[Tbl_Yemekler] ([yemekid])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
