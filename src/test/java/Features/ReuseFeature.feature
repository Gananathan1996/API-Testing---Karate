Feature: To resue the feature files

Scenario: Sending another featue response as request into the new feature

    Given url 'https://gorest.co.in/public/v2/users'
    * def feature = read('Get.feature')
    * def requestpayload1 = call feature
    And request requestPayload1
    * print reqPayload1
    And header Authorization : 'Bearer ' + TokenId
    When method post
    Then status 201
    And match $.name == 'Ganat'
    And match $.id == '#present'