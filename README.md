# fifty-fifty-app
The web application that interacts with the fifty-fifty web service.

It has one endpoint at /home and presents two buttons. One fires an authenticated request and the other fires an unauthenticated request. Unauthenticated requests will receive a 401 unauthorized and Authenticated requests will receive either a 503 if the service is not available or a 200 accompanied by a random dictionary word. This app is dependant on the "fifty fifty" web service being available.
