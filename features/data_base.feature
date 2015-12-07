Feature: Confirm that app has a DB

As a administrator of the app
So that I can track a users count
I want to confirm the DB is within the app

Scenario: A student database exists
  
  Then the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 0     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 0     |
  | 10518786 | Joshua      | Terry     | Florez     | 0     |
  | 10517115 | Christopher | Landry    | Verdicchio | 0     |
  | 10517555 | William     | Sloane    | Rudolph    | 0     |

