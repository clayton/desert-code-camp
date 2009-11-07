Feature: Session signup
  In order to attend the conference
  As a guest
  I want to be able to signup for a session

  Scenario: Guest signing up for a session
    Given the following sessions:
      | Presenter | Title          | Start Time        | Approval Status |
      | Clayton   | Cucumber Rules | Nov 7, 2009 13:40 | true            |
    And I am a guest
    And I am on the home page
    When I follow "Sessions"
    And I follow "Signup for Cucumber Rules"
    Then I should see "You must be logged in to access this page"
    When I follow "Register Now"
    And I fill out the registration form
    When I press "Register"
    Then I should see "Signup for Cucumber Rules"
    When I press "Sign Me Up!"
    Then I should see "You've been signed up for Cucumber Rules"
    And the presentation "Cucumber Rules" should have "1" attendee




