Feature: Dashboard
  In order to see what a user has been doing
  As an admin
  I want to see a listing of each users actions

  Scenario: Dashboard list requests
    Given a user has made a request
    When I am on the dashboard
    Then I see the user's request
