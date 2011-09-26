Feature: Create a kicking ass project
  As a project manager
  I want to create a kicking ass project
  So that I can start to manage it using Chronos!
  
  @omniauth_test
  Scenario: The one where it's a valid project
    Given I am signed in
    And I am on the home page
    And I fill in "New project name" with "Kicking ass project"
    And I fill in "Where is your tests results?" with "http://chronos-pm.heroku.com/cucumber.json"
    When I press "Create project"
    Then I should see "Kicking ass project was created!"
    And I should be on the Kicking ass project page
