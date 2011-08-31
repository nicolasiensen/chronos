Feature: View my project user stories
  As a project manager
  I want to view my project user stories
  So that I can keep track all of them

  Scenario: The one where the project have no user story
    Given there is a project
    When I go to this project page
    Then I should see "This project have no user story yet"

  Scenario: The one where the project have one user story
    Given there is a project
    And this project have an user story called "View my project user stories"
    When I go to this project page
    Then I should see "View my project user stories"
