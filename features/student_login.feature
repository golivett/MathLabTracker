Feature: User can "log into" the MathLabTracker

As a student at The Citadel
So I can get credit for being at the Math Lab
I want to sign into MathLabTracker
    
Scenario: A student logs into MathLabTracker
  
  Given I am on the home page
  When I press "Sign In"
  Then I shoud see "Thanks for logging in!"