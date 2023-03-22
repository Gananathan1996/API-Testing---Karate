Feature: Karate basic assertions and markers

  Scenario: To validate some get/post request with basic karate assertions
    Given url 'https://gorest.co.in/public/v2/users'
    And path 203
    When method GET
    Then status 200
    * print response
    * def dollar = $.gender
    * print dollar
    #Here dollar is nothing but response
    * def expected_Output = read('classpath:output.json')
    # * def expected_Output = read('Filename') // if file is within the feature folder
    * def jsonResponse = response
    * def count = jsonResponse.length
    * print count
    #{
    #"gender": "female",
    #"name": "Devasree Dwivedi",
    #"id": 203,
    #"email": "devasree_dwivedi@bogisich.co",
    #"status": "active"
    #}
    # using relational operators
    * match response.gender == "female"
    * match response.id != 200
    * assert response.id >= 200
    * assert response.id <= 300
    #using markers
    * match response.email == "#ignore"
    * match response == expected_Output
