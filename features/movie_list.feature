Feature: Browse the latest movies
  To get the latest movies
  As client
  I want to see all the movies ordered by added date and paginated by 60

  Scenary: Browse the first page of latest movies
    Given that the library has the following movies:
      |id|title|directors|
      |1|Blazing Saddles|Mel Brooks|
      |2|Spaceballs|Mel Brooks|
      |3|Back To The Future|Rober Zemeckis, Steven Spielberg|
    When I go to the main page of the site
    Then I should see the last 3 movies added
      And the 1st movie has title "Back To The Future"
      And the 2nd movie has title "Spaceballs"
      And the 3rd movie has title "Blazing Saddles" 

