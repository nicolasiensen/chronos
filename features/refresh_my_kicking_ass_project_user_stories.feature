Feature: View all 
  In order to update my project based on my acceptance tests
  As a project manager
  I want to refresh my kicking ass project user stories

  @omniauth_test
  Scenario: The one where I refresh my kicking ass project
    Given I am signed in
    And I have a project called "Chronos, the new amazing PM app"
    And I am on this project page
    When I press "Refresh"
    Then I should see "Fresh project!"
