Feature: Account registration
  In order to use additional features of the site
  As a guest
  I want to register for an account

  Scenario: A guest registering for an account
    Given I am a guest
    And I am on the home page
    When I follow "Register"
    Then I should be on the new user page
    Given I fill in "E-Mail" with "clayton@integrumtech.com"
    And I fill in "Name" with "Clayton"
    And I fill in "Bio" with "Rails developer @integrum"
    And I fill in "Website" with "http://claytonlz.com"
    And I fill in "Password" with "bdd000cucumber"
    And I fill in "Password Confirmation" with "bdd000cucumber"
    When I press "Register"
    Then I should be on the homepage
    And I should see "Welcome Back, Clayton"



