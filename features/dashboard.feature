Feature: Dashboard
  In order to see what a user has been doing
  As an admin
  I want to see a listing of each users actions

  Scenario: Dashboard list requests
    Given a user has made a request
    When I am on the dashboard
    Then I should see the user's request

  Scenario: Filter users
    Given users are available
    And requests have been created
    And I am on the dashboard
    When I filter for user id "1"
    Then I should see the actions for user with id "1"
