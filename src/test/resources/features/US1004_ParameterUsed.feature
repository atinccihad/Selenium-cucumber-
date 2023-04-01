Feature: US1004 Parametre Kullanimi

  Scenario Outline: TC01 Parametre kullanimi
    Given kullanici <url> anasayfasina gider
    Then kullanici <sure> sn bekler
    When Url'in <istenenUrl> icerdigini test edelim
    And kullanici sayfayi kapatir
    Examples:
      | url              | sure | istenenUrl |
      | "hepsiburadaUrl" | 3    | "hepsi"    |