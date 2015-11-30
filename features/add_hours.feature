Feature: There exist a student table
  
  As a user of the website
  So that data can be stored & accessed
  I want to be able to store hours onto a table

Scenario: A student receives a credit for logging in
  
  Given I am on the home page
  When I press "Student Hours"
  Then I shoud see "You have been in the Math Lab for"
