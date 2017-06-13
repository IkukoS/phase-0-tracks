Relesase 0 

What are some common HTTP status codes?
 404 Not Found : The server has not found anything matching the Request-URI.
 403 Forbidden : Access to the resource is forbidden. 
                 One common reason for 403 errors is the server maintaining a whitelist of machines that can access that system and the user’s machine not being on it.
 500 Internal Server Error : Moving over to the server-side error codes.
 503 Service Unavailable : Status code could be a temporary problem. It basically means the web server isn’t available. 

What is the difference between a GET request and a POST request? When might each be used?
	GET - Requests data from a specified resource
	POST - Submits data to be processed to a specified resource

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser. The browser may store it and send it back with the next request to the same server.
