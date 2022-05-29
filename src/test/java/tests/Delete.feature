Feature: Delete Demo
  Background:
    * url 'https://reqres.in/api'
    * def expectedOutPut = read("response.json")
  Scenario: delete
    Given path '/users/2'

    When method DELETE
    Then status 204
    And print response
