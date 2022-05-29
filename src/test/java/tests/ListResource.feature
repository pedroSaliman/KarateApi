Feature:list resource User
  Background:
    * url 'https://reqres.in'
  Scenario:Test ListResources  Get

    Given  path  '/api/unknown'
    When  method Get
    Then  status 200
    And print response
    And print responseHeaders
    And print responseCookies
    And print responseTime


