Feature: Virtual directories
  Scenario: Aliases that end with a slash should be treated as a virtual directory
    Given the Server is running at "alias-app"
    When I go to "/posts/2010/01/01/virtual-test/"
    Then I should see "You are being redirected"
   
