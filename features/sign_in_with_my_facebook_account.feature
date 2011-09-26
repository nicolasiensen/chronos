Feature: Sign in with my Facebook account
  As a project manager
  I want to sign in with my Facebook account
  So that I can manage my own stuff
  
  @omniauth_test
  Scenario: The one where I am a new user
    Given I am on the home page
    When I follow "Sign in with Facebook"
    Then I should see "Greetings Nícolas Iensen!"
    And I should not see "Sign in with Facebook"
    And I should be on the home page
