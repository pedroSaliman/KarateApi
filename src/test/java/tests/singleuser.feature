Feature:Single User
  Background:
    * url 'https://reqres.in'
  Scenario:Test Single user  Get

    Given  path  '/api/users/2'
    When  method Get
    Then  status 200
    And print response
    And print responseHeaders
    And print responseCookies
    And print responseTime
    And match response.data.email == 'janet.weaver@reqres.in'

