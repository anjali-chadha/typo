Feature: Manage Categories
  As an admin
  I want to categorise my blogs of various topics
  I want to be able to create new categories and edit older ones

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"

  Scenario: Create a new category
    Given I am on the categories page
    When I fill in "category_name" with "shapes"
    And I fill in "category_keywords" with "circle"
    And I fill in "category_description" with "Is Circle a Shape?"
    And I press "Save"
    Then I should see "shapes"
    Then I should see "circle"
    Then I should see "Is Circle a Shape?"