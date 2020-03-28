Feature: Aetna Coding Challenge - Rapname

  Scenario: First Name Field Validation
    Given   I am on the rappage
    Then    I see the firstname field

  Scenario: Last Initial Field Validation
    Given   I am on the rappage
    Then    I see the lastinitial field

  Scenario: First Name Length Validation
    Given   I am on the rappage
    When    I enter SomethingThatHasMoreThan24Charaters into the firstname field
    Then    I do not see SomethingThatHasMoreThan24Charaters in the firstname field

  Scenario: Last Initial Length Validation
    Given   I am on the rappage
    When    I enter 12 into the lastinitial field
    Then    I do not see 12 in the lastinitial field

  Scenario: Enter First Name Validation
    Given   I am on the rappage
    When    I enter Ryan into the firstname field
    Then    I see Ryan in the firstname field

  Scenario: Enter Last Initial Validation
    Given   I am on the rappage
    When    I enter O into the lastinitial field
    Then    I see O in the lastinitial field

  Scenario: One name added Validation
    Given   I am on the rappage
    When    I enter Wilson into the firstname field
    And     I select the shorten checkbox
    And     I press the Male button
    Then    I see 1 name added to the list
    And     I see shorten is checked

  Scenario: Two names added Validation
    Given   I am on the rappage
    When    I enter Emily into the firstname field
    And     I enter A into the lastinitial field
    And     I deselect the shorten checkbox
    And     I press the Female button
    And     I press the Female button
    Then    I see 2 names added to the list
    And     I see shorten is unchecked