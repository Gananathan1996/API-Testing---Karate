Feature: Basics of karate
@primary
Scenario: Basic Scenario 1

 * print 'Gananathan'
 
 * def a = 10
 * def b = 10
 * print 'total' + (a + b)
 
 Scenario: Basic Scenario 2 
 // Simple json reader
 
 * def jsonObject1 =
 """
 [
 {
 "id" : 40
 "name" : "Gana"
 },
 {
  "id" : 40
 "name" : "Gana"
 }
 ]
 
 """
 
 * print jsonObject1[0].id 
 * print jsonObject1[0].name
 * print jsonObject1[1].id 
 * print jsonObject1[1].id 
 
  Scenario: Basic Scenario 3 
 // complex json reader
 
 * def jsonObject2 =
 """
 
{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}

"""
 * print jsonObject2.menu
 * print jsonObject2.menu.id
 * print jsonObject2.menu.popup
 * print jsonObject2.menu.popup.menuitem
 * print jsonObject2.menu.popup.menuitem[0].value
 * print jsonObject2.menu.popup.menuitem[1].value
 * print jsonObject2.menu.popup.menuitem[0].onclick