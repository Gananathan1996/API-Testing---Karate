Feature: PUT request

  Background: 
    * url baseURL
    * def requestPayload =
      """
      {
      "name" : "Gananathan",
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
    And match $.name == 'Gananathan'
    And match $.id == '#present'