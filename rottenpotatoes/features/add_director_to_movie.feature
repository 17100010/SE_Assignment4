Feature: Edit a movie to add a director
 
  As a movie lover
  So that I can also keep track of which movie was directed by which director
  I want to be able to add directors to existing movies

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date | director |
  | Aladdin                 | G      | 25-Nov-1992  | abc      |
  | The Terminator          | R      | 26-Oct-1984  |          |
  | When Harry Met Sally    | R      | 21-Jul-1989  | ghi      |
  | The Help                | PG-13  | 10-Aug-2011  | jkl      |
  | Chocolat                | PG-13  | 5-Jan-2001   |          |
  | Amelie                  | R      | 25-Apr-2001  |          |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |          |
  | The Incredibles         | PG     | 5-Nov-2004   |          |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |          |
  | Chicken Run             | G      | 21-Jun-2000  |          |

  And  I am on the RottenPotatoes home page
  
  Scenario: Edit a movie to add a director
   When I follow "More about The Terminator"
   And I follow "Edit"
   And I fill in "Director" with "David"
   And I press "Update Movie Info"
   Then I should see "David"
   
   
   
    # When I check the following ratings: PG, R
    # And I uncheck the following ratings: PG-13, G
    # And I press "Refresh"
    # Then I should see "When Harry Met Sally"
    # And I should see "Amelie"
    # But I should not see "2001: A Space Odyssey"
    # And I should not see "The Help"
