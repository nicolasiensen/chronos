Feature: View my project user stories
  As a project manager
  I want to view my project user stories
  So that I can keep track all of them

  Scenario: The one where the project have no user story
    Given there is a project
    When I go to this project page
    Then I should see "This project have no user story yet"

  Scenario: The one where the project have one pending user story
    Given there is a project
    And this project have a pending user story called "View my project user stories"
    When I go to this project page
    Then I should see the pending story feature

  Scenario: The one where the project have one implemented user story
    Given there is a project
    And this project have a implemented user story called "View my project user stories"
    When I go to this project page
    Then I should see the implemented story feature
