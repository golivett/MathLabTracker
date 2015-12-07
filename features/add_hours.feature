Feature: There exist a student table
  
  As a user of the website
  So that data can be stored & accessed
  I want to be able to store hours onto a table

Background: students have been added to database
  
  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 0     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 0     |
  | 10518786 | Joshua      | Terry     | Florez     | 0     |
  | 10517115 | Christopher | Landry    | Verdicchio | 0     |
  | 10517555 | William     | Sloane    | Rudolph    | 0     |

Scenario: user can check their hours
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Check Hours"
  Then I shoud see "Visits"
