Feature: Administrator can edit a student account
  
  As a teacher at The Citadel
  So that I can change student details
  I need to be able to edit student accounts
  
Scenario: An admin edits an account
  
    Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |

  
  Given I am on the home page
  When I press "All Students"
  When I follow "Edit"
  When I fill in "John" for "First name"
  When I fill in "mathisfun" for "Enter Admin Password:"
  When I press "Update Student"
  Then I shoud see "Student was successfully updated."
  
Scenario: An admin edits an account with the wrong password
  
    Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |

  
  Given I am on the home page
  When I press "All Students"
  When I follow "Edit"
  When I fill in "John" for "First name"
  When I fill in "mathisboring" for "Enter Admin Password:"
  When I press "Update Student"
  Then I shoud see "Sorry, that password was incorrect."