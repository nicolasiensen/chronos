Feature: View my project user stories
  In order to keep track of all my project user stories
  As a project manager
  I want to view my project user stories
  
  @omniauth_test
  Scenario: The one where the project have no user story
    Given I am signed in
    And I have a project called "Chronos, the new amazing PM app"
    When I go to this project page
    Then I should see "This project have no user story yet"

  @omniauth_test
  Scenario: The one where the project have one pending user story
    Given I am signed in
    And I have a project called "Chronos, the new amazing PM app"
    And this project have a pending user story called "View my project user stories"
    When I go to this project page
    Then I should see the pending story feature

  @omniauth_test
  Scenario: The one where the project have one implemented user story
    Given I am signed in
    And I have a project called "Chronos, the new amazing PM app"
    And this project have a implemented user story called "View my project user stories"
    When I go to this project page
    Then I should see the implemented story feature
