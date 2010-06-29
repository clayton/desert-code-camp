Feature: Present a session
  In order to provide some value
  As a user
  I want to present a conference session


  Scenario: Creating a Presentation
    Given I am a logged in user
    And I am on the homepage
    When I follow "Sessions"
    And I follow "Create a Session"
    Then I should be on the new conference sessions page
    When I fill in "Title" with "Rspec is Okay"
    And I fill in "Abstract" with "Rspec is a ruby unit testing framework"
    When I press "Save"
    Then I should see "Your presentation has been created"
    And I should be on the homepage
    When I follow "Sessions"
    Then I should see "Rspec is a ruby unit testing framework"

  Scenario: Editing a Presentation's details
    Given I am a logged in user presenting:
      | Title            | Abstract   |
      | RSpec IS SO COOL | RSPEC ZOMG |
    And I am on the homepage
    When I follow "Sessions"
    Then I should see "Edit This Presentation"
    When I follow "Edit This Presentation"
    And I fill in "Title" with "RSpec is great"
    And I fill in "Abstract" with "Learn about Rspec"
    When I press "Save"
    Then I should see "Your presentation has been updated"
    And I should be on the homepage






