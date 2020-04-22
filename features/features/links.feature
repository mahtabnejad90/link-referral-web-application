Feature: Test top level URLs returned by users input

  Background: User is navigated to homepage
    Given the user is on the homepage

    Scenario: User enters a valid URL in the input field
      When the user enters a valid URL
      And the user clicks the on the search button
      Then system checks to see URL is valid

    Scenario: User enters a invalid URL in the input
      When the user enters an invalid URL
      And the user clicks the on the search button
      Then system checks to see URL is invalid and returns an error

     Scenario: User is returned with top level urls once valid url is entered
      When the user enters a valid URL
      And the user clicks the on the search button
      Then system checks to see URL is valid
      Then user finds the top-links


