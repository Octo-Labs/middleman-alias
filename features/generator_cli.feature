Feature: Template generator CLI command
 Scenario: Create a new alias template with the command line
   Given a fixture app "empty-alias-app"
   And I run `middleman alias_template`
   Then the exit status should be 0
   Then the following files should exist:
     | source/alias.html.erb |
