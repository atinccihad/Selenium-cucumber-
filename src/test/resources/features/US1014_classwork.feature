@web
Feature: US1014 class work

  Scenario Outline: Kullanici ve Url Testi
    Given kullanici <url> anasayfasinda
    When kullanici <sure> sn bekler
    Then kullanici Login Portala kadar asagi iner
    When kullanici <sure> sn bekler
    And kullanici Login Portala tiklar
    When kullanici <sure> sn bekler
    And kullanici diger windowa gecer
    When kullanici <sure> sn bekler
    And kullanici <userName> kutusuna bilgileri girer
    When kullanici <sure> sn bekler
    And kullanici <pass> bolumune bilgileri girer
    When kullanici <sure> sn bekler
    And kullanici login butonuna basar
    When kullanici <sure> sn bekler
    And kullanici Popup'ta cikan yazinin validation failed oldugunu test eder
    When kullanici <sure> sn bekler
    And kullanici Ok diyerek Popup'i kapatir
    When kullanici <sure> sn bekler
    And kullanici ilk sayfaya geri doner
    When kullanici <sure> sn bekler
    And kullanici ilk sayfaya donuldugunu test eder
    When kullanici <sure> sn bekler
    And sayfayi kapatir
    Examples:
      | url      | sure | userName   | pass       |
      | "webUrl" | 1    | "username" | "password" |