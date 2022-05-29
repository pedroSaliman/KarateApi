Feature: Post Demo
  Background:
    * url 'https://reqres.in'
  Scenario: Login
    Given path '/api/login'
    And request {"email": "eve.holt@reqres.in","password": "cityslicka"}
    When method POST
    Then status 200
    And print response
    And match response.token == 'QpwL5tke4Pnpja7X4'
