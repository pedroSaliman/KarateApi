Feature:Api Demo
  Background:
    * url 'https://reqres.in/api'
  Scenario:Test Simple  Get

      Given  path  '/users?page=2'
      When  method Get
      Then  status 200
      And print response
      And print responseHeaders
      And print responseCookies
      And print responseTime
      And assert response.data.length == 6
      And match response.data[3].id == 4




  Scenario: Demo2
    
    Given path '/users/2'
    When method Get
    Then status 200
    And print response
    And print responseHeaders
    And print responseCookies
    And print responseTime