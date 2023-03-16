Feature: All about post request

Background: 
* url ''\
* def requestPayload = 
"""
{
"name" : "Gana",
"Id" : "043"
}
"""

* def reqPayload = read('classpath:#path_of_the_file')
Scenario: Sending request from within feature file by defining a jsonobject
Given path '/public/users'
And request requestPayload
And header Authorization : 'Bearer ' + TokenId
When method post
Then status 201
And match $.name == 'Ganat'
And match $.id == '#present'


Scenario: Sending request from json file
Given path '/public/users'
And request requestPayload
And header Authorization : 'Bearer ' + TokenId
When method post
Then status 201
And match $.name == 'Ganat'
And match $.id == '#present'