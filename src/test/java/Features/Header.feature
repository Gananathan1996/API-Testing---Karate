Feature: All Header related functions

Scenario: Simple way to pass header expilicitly

Given header Content-Type = ''
And header Accept Encoding = ''
And header Connection = ''
And header Expect = ''
And header User-Agent = ''
And header Authorization = 'Bearer .....'
When url 'https://gorest.co.in/public/v2/users'
And path 30
When method GET
Then status 200
* print response

Scenario: Passing headers by defining the header values 

* def request_Headers = {content_Type : '', Authorization : ''}
Given header request_headers
When url ''
And path 30
When method GET
Then status 200
* print response

Scenario: Passing headers using Configure keyword where given is not required

* configure headers = {content_Type : '', Authorization : ''}
When url ''
And path 30
When method GET
Then status 200
* print response