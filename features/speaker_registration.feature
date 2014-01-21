Feature: Speakers registration
  In order to participate the Conference
  As a potential speaker
  I want to register as speaker

  Scenario: Register Speaker from the root page
    Given I visit the root page
    When I submit New Speaker form
    Then a new Speaker should be created
    And I am at the root page
