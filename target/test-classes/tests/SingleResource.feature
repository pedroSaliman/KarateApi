Feature:Single User
  Background:
    * url 'https://reqres.in'
  Scenario:Test SingleResources  Get

    Given  path  '/api/unknown/2'
    When  method Get
    Then  status 200
    And print response
    And print responseHeaders
    And print responseCookies
    And print responseTime
    And match response.data.color == '#C74375'

