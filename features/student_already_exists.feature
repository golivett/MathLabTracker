Feature: A user cannot be added twice

As a student at The Citadel
So that I can only have one account logging my hours
I want to not create myself twice in a database

Scenario: User already exists
  
  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 1     |
  | 10518786 | Joshua      | Terry     | Florez     | 1     |
  | 10517115 | Christopher | Landry    | Verdicchio | 1     |
  | 10517555 | William     | Sloane    | Rudolph    | 1     |
  
  

  Given I am on the home page
  When I press "Create New Student"
  Then I should see "New Student"
  When I fill in "10517115" for "Cwid"
  When I fill in "Christopher" for "First name"
  When I fill in "Landry" for "Last name"
  When I press "Create Student"
  Then I should see "Sorry, a student with this CWID already exists."
  