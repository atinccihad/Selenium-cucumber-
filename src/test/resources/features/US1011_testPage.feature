@practiceClick
Feature: Cucumber Java Manipulation

  Scenario Outline: Practice click and keys
    Given <url> adresine gidin
    And <int1> defa click me ye tiklayin
    And <int1> defa Space dugmesine basin
    And Down yazisindaki iki basamakli sayilarin hepsini toplayin
    And Tum click metinlerinin uzunlugunun toplamini onceki toplamdan cikarin
    Then sonucun <result> oldugunu dogrulayin
    Examples:
      | url                                                                  | int1 | result |
      | "https://testpages.herokuapp.com/styled/key-click-display-test.html" | 50   | 1100   |