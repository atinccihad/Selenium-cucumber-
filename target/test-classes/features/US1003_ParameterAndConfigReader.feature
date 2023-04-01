Feature: Parametre Kullanimi

  @gp1
  Scenario Outline: TC01Parametre kullaniminda ConfigReader kullanimi
    Given kullanici <url> anasayfasina gider
    When Url'in <istenenUrl> icerdigini test edelim
    Then kullanici <arananKelime> icin arama yapar
    Then kullanici <sure> sn bekler
    And kullanici sayfayi kapatir
    Examples:
      | url         | istenenUrl | arananKelime | sure |
      | "amazonUrl" | "amazon"   | "Nutella"    | 3    |

  @gp2
  Scenario Outline: TC02Parametre kullaniminda ConfigReader kullanimi
    Given kullanici <url> anasayfasina gider
    When Url'in <istenenUrl> icerdigini test edelim
    Then kullanici <sure> sn bekler
    And kullanici sayfayi kapatir
    Examples:
      | url          | istenenUrl | sure |
      | "bestbuyUrl" | "bestbuy"  | 3    |

  @gp3
  Scenario Outline: TC03Parametre kullaniminda ConfigReader kullanimi
    Given kullanici <url> anasayfasina gider
    When Url'in <istenenUrl> icerdigini test edelim
    Then kullanici <sure> sn bekler
    And kullanici sayfayi kapatir
    Examples:
      | url      | istenenUrl | sure |
      | "HMCUrl" | "hotel"    | 3    |

  @gp4
  Scenario Outline: TC04Parametre kullaniminda ConfigReader kullanimi
    Given kullanici <url> anasayfasina gider
    When Url'in <istenenUrl> icerdigini test edelim
    Then kullanici <sure> sn bekler
    And kullanici sayfayi kapatir
    Examples:
      | url               | istenenUrl | sure |
      | "blueRentAcarUrl" | "blue"     | 3    |

  @gp5
  Scenario Outline: TC01Parametre kullaniminda ConfigReader kullanimi
    Given kullanici <url> anasayfasina gider
    When Url'in <istenenUrl> icerdigini test edelim
    Then kullanici <sure> sn bekler
    And kullanici sayfayi kapatir
    Examples:
      | url      | istenenUrl | sure |
      | "HMCUrl" | "hotel"    | 3    |

