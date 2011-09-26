Feature: View all my projects
  As a project manager
  I want to view all my projects
  So that I can browse between them

  @omniauth_test
  Scenario: The one where I have a project
    Given I am signed in
    And I have a project called "Chronos, the new amazing PM app"
    When I go to all projects page
    Then I should see "Chronos, the new amazing PM app"
