Feature: Post Demo
  Background:
    * url 'https://reqres.in'
  Scenario: Register
    Given path '/api/register'
    And request { "email": "eve.holt@reqres.in","password": "pistol"}
    When method POST
    Then status 200
    And print response
    And match response.token == 'QpwL5tke4Pnpja7X4'
