Feature: To call Java methods from a class file into karate feature file

Scenario: Calling a method from JavaUtility.class
* def Java = Java.type('Features.GJavaUtility')
* def kava = Java.method('arg');
* assert kava == 'Hello arg'


  #"""
  #function(s) {
    #var SimpleDateFormat = 
    #var sdf = new SimpleDateFormat()
  #} 
  #"""
  #
  #* def Java = Java.type('Features.JavaUtility')
#* def Method = new Java().method1();