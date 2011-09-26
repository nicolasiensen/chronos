Feature: View all my projects
  In order to browse between projects
  As a project manager
  I want to view all my projects

  @omniauth_test
  Scenario: The one where I have a project
    Given I am signed in
    And I have a project called "Chronos, the new amazing PM app"
    When I go to all projects page
    Then I should see "Chronos, the new amazing PM app"

  @omniauth_test
  Scenario: The one where I don't have any project
    Given I am signed in
    When I go to all projects page
    Then I should see "How sad, you have no project yet"
