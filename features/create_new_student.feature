Feature: A user can add themselves into the database of students

As a student at The Citadel
So that I can log my hours at the math lab
I want to create myself as a student within the database

Scenario: User doesn't exist

  Given I am on the home page
  When I press "Create New Student"
  Then I should see "New Student"
  
  Given I am on the home page
  When I press "Create New Student"
  Then I should not see "Thank you for signing in"