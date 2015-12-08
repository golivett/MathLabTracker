Feature: Students can be deleted from the database
  
  As an Administrator at the Citadel
  I need to be able to delete students from the database
  So that onl current students will be in the MathTracker database
  
  

  
Scenario: A student can be deleted from the database
  
    Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |

  
  Given I am on the home page
  When I press "All Students"
  When I fill in "10519447" for "Enter CWID:"
  When I fill in "Enter Password:" with "mathisfun"
  When I press "Delete"
  Then I shoud see "Student was successfully destroyed."
  
Scenario: All students can be deleted from the database
  
    Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 1     |
  | 10518786 | Joshua      | Terry     | Florez     | 1     |
  | 10517115 | Christopher | Landry    | Verdicchio | 1     |
  | 10517555 | William     | Sloane    | Rudolph    | 1     |
  
  Given I am on the home page
  When I press "All Students"
  When I fill in "Enter Password:" with "mathisfun"
  When I press "Delete All"
  Then I shoud see "All students have now been deleted."
  
  Scenario: A student cannot be deleted from the database with the wrong password
  
    Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 1     |
  | 10518786 | Joshua      | Terry     | Florez     | 1     |
  | 10517115 | Christopher | Landry    | Verdicchio | 1     |
  | 10517555 | William     | Sloane    | Rudolph    | 1     |
  
  Given I am on the home page
  When I press "All Students"
  When I fill in "10519447" for "Enter CWID:"
  When I fill in "mathisboring" for "Enter Password:"
  When I press "Delete"
  Then I shoud see "Sorry, that password was incorrect."