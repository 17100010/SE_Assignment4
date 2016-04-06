Feature: Edit a movie to add a director
 
  As a movie lover
  So that I can also keep track of which movie was directed by which director
  I want to be able to add directors to existing movies

Background: movies have been added to database

  Given the following movies exist:
  | title                   | rating | release_date | director |
  | Aladdin                 | G      | 25-Nov-1992  | Max      |
  | The Terminator          | R      | 26-Oct-1984  |          |
  | When Harry Met Sally    | R      | 21-Jul-1989  | Carl     |
  | The Help                | PG-13  | 10-Aug-2011  | Zoey     |
  | Chocolat                | PG-13  | 5-Jan-2001   | Max      |
  | Amelie                  | R      | 25-Apr-2001  | Max      |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |          |
  | The Incredibles         | PG     | 5-Nov-2004   |          |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |          |
  | Chicken Run             | G      | 21-Jun-2000  |          |

  And  I am on the RottenPotatoes home page
  
  Scenario: Edit a movie to add a director
   When I follow "More about The Terminator"
   And I follow "Edit"
   And I fill in "Director" with "Henry"
   And I press "Update Movie Info"
   Then I should see "Henry"
   
  Scenario: show movies with the same director
    Given I am on the RottenPotatoes home page
    When I follow "More about Aladdin"
    And I follow "Movies with the same director"
    Then I should see "Chocolat"
    And I should see "Amelie"
    And I should not see "The Help"
   
  Scenario: no director exists  
    Given I am on the RottenPotatoes home page
    When I follow "More about The Incredibles"
    And I follow "Movies with the same director"
    Then I should be on the RottenPotatoes home page
    And I should see "The Incredibles does not have a director."