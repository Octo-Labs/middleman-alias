Feature: Aliases
  Scenario: Aliases should generate redirect pages
    Given the Server is running at "alias-app"
    When I go to "/foo.html"
    Then I should see "You are being redirected"

  Scenario: Aliases should should not over-write existing routes
    Given the Server is running at "alias-app"
    When I go to "/double-foo.html"
    Then I should not see "You are being redirected"
    Then I should see "This is a page about double foo."

  Scenario: Aliases should generate multiple redirect pages
    Given the Server is running at "alias-app"
    When I go to "/foo-a.html"
    Then I should see "You are being redirected"
    When I go to "/foo-b.html"
    Then I should see "You are being redirected"
