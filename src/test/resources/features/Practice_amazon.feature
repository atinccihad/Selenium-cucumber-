@PracticeAmazon
Feature: Amazon Practice
  @a1
  Scenario: Amazon sign Test

    Given  kullanici "amazonUrl" e gider
    When  sign in butonuna tiklar
    And  faker kullanarak e-posta gonderir
    And  gonderdigi e-postanin ekran goruntusunu alir
    And  continiue'a tiklar
    Then  There was a problem mesajini dogrular
    And  Need help e tiklar
    And  forgot your password e tiklar
    And  Password assistance metnini dogrular
    And  Geri gider
    And  Create your account butonuna tiklar
    Then  Create account metnini dogrular
    And  kullanici sayfayi kapatir