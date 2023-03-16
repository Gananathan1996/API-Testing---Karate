Feature: To run a delete request
  
  //Best practice will be always creating an user and deleting them..
  
  Given url "https://gorest.co.in/public/v2/users/20"
  When method Delete
  Then status 204
  And print response
  And match response != '#present'
