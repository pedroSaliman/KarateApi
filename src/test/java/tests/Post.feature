Feature: Post Demo
  Background:
    * url 'https://reqres.in/api'
    * def expectedOutPut = read("response.json")
  Scenario Outline: Post1
    Given path '/users'
    And request {"name": <name>,"job": <job>}
    When method POST
    Then status 201
    And print response
#    And match response.name == 'mohamed'
#    And match response.job == 'Tester'

    Examples:
    |name||job|
    |"mohamed"||"Tester"|
    |"walled"||"Tester"|
    |"ahmed"||"Tester"|
    |"mahmoud"||"Tester"|
    |"kamal"||"Tester"|
    |"nagy"||"Tester"|
    |"nesrin"||"Tester"|





  Scenario: Post2
    Given path  '/users'
    And def requestBody = read('response.json')
    And request requestBody
    When method POST
    Then status 201
    And print response
    And match response.name == 'mohamed'
