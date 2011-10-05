@event_images
Feature: Event Images
  In order to have event_images on my website
  As an administrator
  I want to manage event_images

  Background:
    Given I am a logged in refinery user
    And I have no event_images

  @event_images-list @list
  Scenario: Event Images List
   Given I have event_images titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of event_images
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @event_images-valid @valid
  Scenario: Create Valid Event Image
    When I go to the list of event_images
    And I follow "Add New Event Image"
    And I fill in "Data" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 event_image

  @event_images-invalid @invalid
  Scenario: Create Invalid Event Image (without data)
    When I go to the list of event_images
    And I follow "Add New Event Image"
    And I press "Save"
    Then I should see "Data can't be blank"
    And I should have 0 event_images

  @event_images-edit @edit
  Scenario: Edit Existing Event Image
    Given I have event_images titled "A data"
    When I go to the list of event_images
    And I follow "Edit this event_image" within ".actions"
    Then I fill in "Data" with "A different data"
    And I press "Save"
    Then I should see "'A different data' was successfully updated."
    And I should be on the list of event_images
    And I should not see "A data"

  @event_images-duplicate @duplicate
  Scenario: Create Duplicate Event Image
    Given I only have event_images titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of event_images
    And I follow "Add New Event Image"
    And I fill in "Data" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 event_images

  @event_images-delete @delete
  Scenario: Delete Event Image
    Given I only have event_images titled UniqueTitleOne
    When I go to the list of event_images
    And I follow "Remove this event image forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 event_images
 