Feature: Guest interaction
  In order to interact with guests
  As a camp director
  I want guests to be able to e-mail me easily

  Scenario: As a guest I should be able to e-mail the camp director
    Given I am a guest
    When I am on the homepage
    Then I should see "E-mail the camp director"
    And I should see a link to "mailto:campdirector@example.com"
  
  
  
  
