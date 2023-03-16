Feature: All related to Get Request
@primary
  Scenario: Get user details path parameter
    Given url BaseURL
    And path '1220'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def name = jsonResponse.name
    * match name ==  "Prem Pilla DVM"

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
