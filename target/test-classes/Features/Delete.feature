Feature: To run a delete request
  
  #Best practice will be always creating an user and deleting them..
  Scenario: To delete an user/ using delete request
  Given url "https://reqres.in/api/users/2"
  When method Delete
  Then status 204
  And print response.header
  And match response.header == "Success"
  
  # Sceanrio outline can be used to delete several users in form of data driven
