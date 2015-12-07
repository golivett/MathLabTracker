Feature: A professor can search their students

Scenario: Professor can see the logs of their students
  
Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  | 10514815 | Kaige       | Lindberg  | Florez     | 1     |
  | 10518786 | Joshua      | Terry     | Florez     | 1     |
  | 10517115 | Christopher | Landry    | Verdicchio | 1     |
  | 10517555 | William     | Sloane    | Rudolph    | 1     |

Given I am on the home page
Then I press "Search Professor Hours"
Then I should see "Professor Students"
Then I should see "Terry"
Then I should see "Lindberg"
Then I should not see "Sloane"