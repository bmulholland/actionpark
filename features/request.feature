Feature: Request
  In order to see what a user has been doing
  As an admin
  I want a user's actions to be stored in the database

  Scenario: Loading a page
    When a user loads a page
    Then the user's action should be stored in the database
