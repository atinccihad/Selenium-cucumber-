Feature:  google trendyol

 Scenario Outline: TC9001 kullanici google'a gider
  Given Google'a gidiniz
  Then <string> u aratiniz
  And trendyol linkini bulup siteye gidiniz
  And <aranacakUrun> aratınız
  Then toplam ürün sayısıni alınız
  And yeni sekmede <morhipoUrl> ya gidiniz
  Then makas aratınız
  And toplam ürün sayısını alınız
  And iki sitedeki toplam makas sayısını karşılastırınız
  And Önce ürün sayısı fazla olan siteyi kapatınız
  When Sonra diğer sayfayıda kapatınız
  Examples:
   | string     | aranacakUrun | morhipoUrl |
   | "trendyol" | "makas"      | "morhipo"  |