Feature: Virtual directories
  Given a fixture app "alias-app"
  When I go to "/posts/2010/01/01/virtual-test/"
  Then I should see "You are being redirected"
   
