Feature: Karate basic assertions and markers

  Scenario: To validate some get/post request with basic karate assertions
  
    * def expected_Output = read('classpath:/karatePractice/src/test/resources/user.json')
    # * def expected_Output = read('Filename') // if file is within the feature folder 
    
    Given url 'https://gorest.co.in/public/v2/users'
    And path 203
    When method GET
    Then status 200
    * print response
    * print $ # Here dollar is nothing but response
    
    * def jsonResponse = response
    * def count = jsonResponse.length
    * print count
    
    # using relational operators
    * match count == 10
    * match count != 9
    * assert count >= 9
    * assert count <= 11

    #using markers
    * match count = "#ignore"
    * match count = "#string"
    * match response == expected_Output
    
    #schema validation can be performed by using #string ##string #present and etc
    