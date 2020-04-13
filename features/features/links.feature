Feature: Test top level URLs returned by users input

  Background: User is navigated to homepage
    Given the user is on the homepage

    Scenario: User enters a valid URL in the input field
      When the user enters a valid URL
      And the user clicks the on the search button
      Then System checks to see URL is valid