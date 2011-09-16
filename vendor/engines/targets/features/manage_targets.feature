@targets
Feature: Targets
  In order to have targets on my website
  As an administrator
  I want to manage targets

  Background:
    Given I am a logged in refinery user
    And I have no targets

  @targets-list @list
  Scenario: Targets List
   Given I have targets titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of targets
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @targets-valid @valid
  Scenario: Create Valid Target
    When I go to the list of targets
    And I follow "Add New Target"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 target

  @targets-invalid @invalid
  Scenario: Create Invalid Target (without name)
    When I go to the list of targets
    And I follow "Add New Target"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 targets

  @targets-edit @edit
  Scenario: Edit Existing Target
    Given I have targets titled "A name"
    When I go to the list of targets
    And I follow "Edit this target" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of targets
    And I should not see "A name"

  @targets-duplicate @duplicate
  Scenario: Create Duplicate Target
    Given I only have targets titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of targets
    And I follow "Add New Target"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 targets

  @targets-delete @delete
  Scenario: Delete Target
    Given I only have targets titled UniqueTitleOne
    When I go to the list of targets
    And I follow "Remove this target forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 targets
 