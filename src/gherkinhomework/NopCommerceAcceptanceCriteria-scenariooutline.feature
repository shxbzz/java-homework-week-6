1
Feature:Bookcategory
  Background: I should be able to see homepage
    Given I enter "URL" https://demo.nopcommerce.com/" in browser
    And I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on homepage
    Then I should be able to see top menu tabs with "<categories>"

    Examples:
    |Categories        |
    |Computer          |
    |Electronic        |
    |Apparel           |
    |Digital downloads |
    |Books             |
    |Jewellery         |
    |Gift card         |
2
  Scenario Outline: I should be able to see book page with filters
    When I am on homepage
    Then I should be navigated to book category
    Then I should be able to see "<filters>"

    Examples:
      |Filters     |
      |Sort By     |
      |Display     |
      |The Grid    |
      |List Tab    |
3
    Scenario Outline: I should be able to see list of terms of each filter
      Given I am on book page
      When I click on "<filter>"
      Then I should be able to see "<list>" in dropdown menu

      Examples:
        |Filter     |  List                                                                         |
        |Sort By    | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on|
        |Display    | 3 , 6 , 9                                                                     |
4
  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option from the list
    Then  I should be able to see "<result>"

    Examples:
      |Filter     | Option             | result
      |Sort By    | Name: A toZ        | sorted product with the product name in alphabetical order A to Z|
      |Sort By    | Name: Z to A       | sorted product with the product name in alphabetical order Z to A|
      |Sort By    | Price: Low to High | sorted product with price in descending order                    |
      |Sort By    | Price: High to Low | sorted product with price in ascending order                     |
      |Sort By    | Created on         | Recently added product should be show first                      |
      |Display    | 3                  | 3 products per page                                              |
      |Display    | 6                  | 6 products per page                                              |
      |Display    | 9                  | 9 products per page                                              |

5
  Scenario Outline: I should be able to see product display format according to display format as per given in SRS document
    Given I am on book page
    When I click on "<display format icon>"
    Then I should be able to see product display format type as per given in SRS document

    Examples:
      |display format icon |
      |Grid                |
      |List                |