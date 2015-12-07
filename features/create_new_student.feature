Feature: A user can add themselves into the database of students

As a student at The Citadel
So that I can log my hours at the math lab
I want to create myself as a student within the database

Scenario: User doesn't exist

  Given I am on the home page
  When I press "Create New Student"
  Then I should see "New Student"
  When I fill in "10519876" for "Cwid"
  When I fill in "John" for "First name"
  When I fill in "Smith" for "Last name"
  When I press "Create Student"
  Then I should see "Student was successfully created."
  