Feature: Student can view their hours on the MathLabTracker
  
As a student at The Citadel
So I can get credit for being at the Math Lab
I want to view my hours on MathLabTracker
  
Scenario: A student logs into MathLabTracker
  
    Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 1     |
  | 10518786 | Joshua      | Terry     | Florez     | 1     |
  | 10517115 | Christopher | Landry    | Verdicchio | 1     |
  | 10517555 | William     | Sloane    | Rudolph    | 1     |
  
  Given I am on the home page
  When I fill in "10518786" for "Enter CWID:"
  When I press "Check Hours"
  Then I should see "Joshua"