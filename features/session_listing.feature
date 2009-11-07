Feature: Session listing
  In order to see what sessions are being presented
  As a guest
  I want to see a list of approved sessions

  Scenario: Approved Session
    Given the following sessions:
      | Presenter | Title          | Start Time        | Approval Status |
      | Clayton   | Cucumber Rules | Nov 7, 2009 13:40 | true            |
    Given I am a guest
    And I am on the home page
    When I follow "Sessions"
    Then I should see that "Clayton" is presenting "Cucumber Rules" on "Nov 7, 2009 13:40"

  Scenario: Approved and Unapproved Sessions
    Given the following sessions:
      | Presenter | Title          | Start Time        | Approval Status |
      | Clayton   | Cucumber Rules | Nov 7, 2009 13:40 | true            |
      | Joe       | Testing Sucks  | Nov 7, 2009 13:40 | false           |
    Given I am a guest
    And I am on the home page
    When I follow "Sessions"
    Then I should see that "Clayton" is presenting "Cucumber Rules" on "Nov 7, 2009 13:40"
    And I should not see that "Joe" is presenting "Testing Sucks" on "Nov 7, 2009 13:40"
