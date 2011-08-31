Feature: View my project features
  As a project manager
  I want to view my project features
  So that I can keep track all of them

  Scenario: The one where the project have no features
    Given there is a project
    When I go to this project page
    Then I should see "This project have no features yet"

  Scenario: The one where the project have some features
    Given there is a project
    And this project have a feature called "View my project features"
    When I go to this project page
    Then I should see "View my project features"
