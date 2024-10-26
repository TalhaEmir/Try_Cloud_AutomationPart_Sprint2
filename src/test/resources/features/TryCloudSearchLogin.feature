Feature: Login functionality

  Background:
    Given the user is on the login page

  Scenario: User can login with valid credentials
    When the user enters valid username and password
    And the user clicks on the "Login" button
    Then the user should be logged in successfully

  Scenario: User can login by pressing the "Enter" key
    When the user enters valid username and password
    And the user presses the "Enter" key
    Then the user should be logged in successfully

  Scenario: User cannot login with invalid credentials
    When the user enters an invalid username and password
    And the user clicks on the "Login" button
    Then "Wrong username or password." message should be displayed

  Scenario: User cannot login with empty username or password
    When the user leaves the username or password field empty
    And the user clicks on the "Login" button
    Then "Please fill out this field" message should be displayed

  Scenario: Password is displayed as dots by default
    Then the password should be displayed as dots by default

  Scenario: User can view the password explicitly if needed
    When the user clicks on the "Show password" option
    Then the password should be displayed explicitly

  Scenario: User can see the "Forgot password?" link and navigate to reset password page
    Then the user should see the "Forgot password?" link
    When the user clicks on the "Forgot password?" link
    Then the user should be navigated to the reset password page
    And the user should see the "Reset Password" button

  Scenario: Username and Password fields have valid placeholders
    Then the username field should have a placeholder "Enter your username"
    And the password field should have a placeholder "Enter your password"