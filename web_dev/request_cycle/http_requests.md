#Release 0: Find The thing

*What are some common HTTP status codes?*
Looks like 200, 202, 204, 304 are the most common.  2's have to do with success, 3's with redirection. 

*What is the difference between a GET request and a POST request?  When might each be used?*

GET requests use the URL to send and store information (like cookies, using status code 200!), and are less secure.  POST uses data given by the client, and is more secure for sensitive data.  POST also sends larger amounts of data, since it has a body.

*What is a cookie?  How does it relate to HTTP requests?*

An HTTP cookie is a small text file that stores information from a client, to help a site identify that client again.  This makes the website experience much more user-friendly and streamlined.  

When it comes to requests, the server stores the information in the browser as a cookie, so it can be sent again when other requests are made to the same page from the same client.

