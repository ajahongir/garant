@target_floors
Feature: Target Floors
  In order to have target_floors on my website
  As an administrator
  I want to manage target_floors

  Background:
    Given I am a logged in refinery user
    And I have no target_floors

  @target_floors-list @list
  Scenario: Target Floors List
   Given I have target_floors titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of target_floors
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @target_floors-valid @valid
  Scenario: Create Valid Target Floor
    When I go to the list of target_floors
    And I follow "Add New Target Floor"
    And I fill in "Data" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 target_floor

  @target_floors-invalid @invalid
  Scenario: Create Invalid Target Floor (without data)
    When I go to the list of target_floors
    And I follow "Add New Target Floor"
    And I press "Save"
    Then I should see "Data can't be blank"
    And I should have 0 target_floors

  @target_floors-edit @edit
  Scenario: Edit Existing Target Floor
    Given I have target_floors titled "A data"
    When I go to the list of target_floors
    And I follow "Edit this target_floor" within ".actions"
    Then I fill in "Data" with "A different data"
    And I press "Save"
    Then I should see "'A different data' was successfully updated."
    And I should be on the list of target_floors
    And I should not see "A data"

  @target_floors-duplicate @duplicate
  Scenario: Create Duplicate Target Floor
    Given I only have target_floors titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of target_floors
    And I follow "Add New Target Floor"
    And I fill in "Data" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 target_floors

  @target_floors-delete @delete
  Scenario: Delete Target Floor
    Given I only have target_floors titled UniqueTitleOne
    When I go to the list of target_floors
    And I follow "Remove this target floor forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 target_floors
 