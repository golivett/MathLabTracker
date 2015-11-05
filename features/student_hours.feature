Feature: Student can view their hours on the MathLabTracker
  
As a student at The Citadel
So I can get credit for being at the Math Lab
I want to view my hours on MathLabTracker
  
Scenario: A student logs into MathLabTracker
  
  Given I am on the home page
  When I press "Student Hours"
  Then I shoud see "You have been in the Math Lab for"