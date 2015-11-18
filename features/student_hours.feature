Feature: Student can view their hours on the MathLabTracker
  
As a student at The Citadel
So I can get credit for being at the Math Lab
I want to view my hours on MathLabTracker
  
Scenario: A student logs into MathLabTracker
  
  Given I am on the home page
  When I fill in "6" for "Enter CWID:"
  When I press "Check Hours"
  Then I shoud see "Joshua"