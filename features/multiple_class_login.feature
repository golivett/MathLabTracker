Feature: A student can have multiple classes
  
  As a user of the website
  A student can have multiple classes
  

Background: students have been added to database
  
  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count | classes                 |
  | 10519447 | George      | Olivetti  | Moore      | 0     | MATH451,MATH131,MATH223 |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 0     | MATH361,MATH131         |
  | 10518786 | Joshua      | Terry     | Florez     | 0     | MATH107                 |
  | 10517115 | Christopher | Landry    | Verdicchio | 0     | MATH106,MATH131         |
  | 10517555 | William     | Sloane    | Rudolph    | 0     | MATH451,MATH223         |

Scenario: user can check their hours
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Class List"
  When I press "MATH451"
  Then I shoud see "Thanks for logging in!"