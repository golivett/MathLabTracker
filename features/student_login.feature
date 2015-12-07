Feature: User can log in the MathLabTracker

As a student at The Citadel
So I can get credit for being at the Math Lab
I want to sign into MathLabTracker
    
Scenario: A student verifies they have logged in
  
  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |

  
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thanks for logging in!"
  When I follow "Back"
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Sorry, student has already logged in today."
  
Scenario: A student can log in
  
  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thanks for logging in!"