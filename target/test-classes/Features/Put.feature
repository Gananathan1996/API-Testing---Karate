  Background: 
    * url baseURL
    * def requestPayload =
      """
      {
      "name" : "Gana",
      "Id" : "043"
      }
      """
    * def reqPayload = read('classpath:#path_of_the_file')

  Scenario: Updating an existing user data using put request
    Given path '/public/users'
    And request requestPayload
    And header Authorization : 'Bearer ' + TokenId
    When method PUT
    Then status 202
    And print response
    And match $.name == 'Gana'
    And match $.id == '#present'