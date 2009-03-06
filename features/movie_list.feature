Feature: Browse the latest movies
  To get the latest movies
  As client
  I want to see all the movies ordered by added date and paginated by 60

  Scenario: Browse the first page of latest movies
    Given that the library has the following movies:
      |title|directors|actors|
      |Blazing Saddles|Mel Brooks|Gene Wilder|
      |Spaceballs|Mel Brooks|Robert|
      |Back To The Future|Rober Zemeckis, Steven Spielberg|Michael J. Fox|
    When I go to home
    Then I should see the last 3 movies added
      And the 1st movie has title "Back To The Future"
      And the 2nd movie has title "Spaceballs"
      And the 3rd movie has title "Blazing Saddles" 

