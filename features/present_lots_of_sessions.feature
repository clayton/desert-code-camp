Feature: Present lots of sessions
  In order to showcase the power of cucumber
  As a workshoper
  I want this useless feature

  Scenario Outline: Creating a lot of Presentations
    Given I am a logged in user
    And I am on the homepage
    When I follow "Sessions"
    And I follow "Create a Session"
    Then I should be on the new conference sessions page
    When I fill in "Title" with "<title>"
    And I fill in "Abstract" with "<abstract>"
    When I press "Save"
    Then I should see "Your presentation has been created"
    And I should be on the homepage
    When I follow "Sessions"
    Then I should see "<displayed_abstract>"

  Scenarios: Lots of presentations
    | title               | abstract                           | displayed_abstract                 |
    | Rspec is Cool       | All about Rspec                    | All about Rspec                    |
    | No iPhone Testing!  | Apple does our QA                  | Apple does our QA                  |
    | Cucumber is Verbose | Have I told you the story about... | Have I told you the story about... |
    | .NET Rules          | .NET is the best framework ever    | I am an unsufferable goon          |
