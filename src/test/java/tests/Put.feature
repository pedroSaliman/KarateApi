Feature: Put Demo
  Background:
    * url 'https://reqres.in/api'
    * def expectedOutPut = read("response.json")
  Scenario: put
    Given path '/users/2'
    And request {"name": "mohamed","job": "Developer"}
    When method PUT
    Then status 200
    And print response
    And match response.name == 'mohamed'
    And match response.job == 'Developer'