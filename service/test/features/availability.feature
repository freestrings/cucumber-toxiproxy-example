Feature: Availability for user service
  User service should survive all possible failure scenarios

  Scenario: Read-only mode without MySQL
    Given MySQL is down
    When user 'u-12345abde234' is requested
    Then the user is returned

  Scenario: Write not allowed without MySQL
    Given MySQL is down
    When new user created with id ... and name ...
    Then HTTP 503 is returned