Feature: All related to Get Request

  Background: 
    * url BaseURL

  @primary
  Scenario: Get user details path parameter
    Given url BaseURL
    And path '111316'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def name = jsonResponse.name
    * match name ==  "#string"

  Scenario: Get user status using query parameter
    * def query = {status:'active'}
    Given url 'https://gorest.co.in/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def count = jsonResponse.length
    * print count
    * match count == 10
    * match count != 9
    * assert count >= 9
    * assert count <= 11

  Scenario Outline: Sending multiple request using scenario outline
    Given path '/public/users' + <id>
    When method GET
    Then status 200
    And response.value == <value>
    And response.staus == <status>

    Examples: 
      | id | value | status  |
      |  1 |     5 | success |
      |  2 |     7 | Fail    |
