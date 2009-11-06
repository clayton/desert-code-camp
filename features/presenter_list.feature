Feature: Presenter list
  In order to see who's who
  As a guest
  I want to see a list of presenters

  Scenario: Presenter List
    Given the following presenters:
      | Name    | Bio                 | Website              |
      | Clayton | Rails dev @integrum | http://claytonlz.com |
      | Chris   | Scrum @integrum     |                      |
    And I am on the homepage
    When I follow "Presenters"
    Then I should see "Clayton"
    And I should see "Rails dev @integrum"
    And I should see "http://claytonlz.com"
    Then I should see "Chris"
    And I should see "Scrum @integrum"
  
