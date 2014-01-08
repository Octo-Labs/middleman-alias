Feature: Aliases
  Scenario: Aliases should generate redirect pages
    Given the Server is running at "alias-app"
    When I go to "/foo.html"
    Then I should see "This is the bar page"
