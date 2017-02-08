# Http Requests

##What are some common HTTP status codes?
*Status codes define how the server handled the transaction.*

**200 OK:**
Succeeded. The resource of information has been returned.

**300 Multiple Choices:**
Many different choices for a requested resource and cannot resolved into one. Example, one index page but in different languages (English, Spanish)

**301 Moved Permanently:**
There is a new permanent Universal Resource Identifier (URI) assigned for the requested resource. Referring to the source, the references should be using the new resource.

**302 Found:**
Temporarily under a different Universal Resource Identifier (URI) the requested resource can be found. Redirection to this source can be altered on occasion. The client should continue to use the Request-URI for future requests.

**304 Not Modified:**
Resource has not been modified due to the version specified by the REQUEST HEADERS (If-Modified-Since or If-None-Match). Since the client has a previously-downloaded copy, there is no need to retransmit the resource!

**307 Temporary Redirect:**
This response is only cacheable if indicated by a Cache-Control or Expires header field. The same as a 302 Found Status, but depends on the REQUEST HEADER.

**400 Bad Request:**
Due to client error or malformed syntax, the server cannot or will not process the request.

**401 Unauthorized:**
Authentication is required and failed. Or authentication was not provided. There is a WWW-Authenticate header challenging the applicability for the request of the resource.

**403 Forbidden:**
The server understood the valid request, but refuses to fulfill or respond to it. User does not have permission to view.

**404 Not Found:**
The requested resource could not be found anything matching the Request-URI. No indication whether the condition is temporary or permanent, meaning this request is permissible and able to use in the future.

**410 Gone:**
The requested resource is no longer available and will not be available again at the server. This condition is to be considered permanent, and this status code should be used when a resource has been intentionally removed.

**500 Internal Server Error:**
Generic error message. The server has an unexpected condition which prevent it from fulfilling the request.

**501 Not Implemented:**
The server does not support the functionality for the request. The server does not recognize the request method or it lacks the ability to fulfill the request.

**503 Service Unavailable:**
At the time, your web server is unable to handle your HTTP request. This is usually a temporary condition. This means the server is currently unavailable. Some reasons why are server crash, maintanence, overload, maliciously being attacked, allotted bandwidth, or forbidden to return the requested document.

**550 Permission Denied:**
The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting.

Here are the references:
1. [w3 org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10)
2. [smartlabsoftware](https://www.smartlabsoftware.com/ref/http-status-codes.htm)
3. [wikipedia](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

----

##What is the difference between a GET request and a POST request? When might each be used?
*something*

**GET**
* Parameters in URL
* Used for fetching documents
* Maximum URL length
* Ok to Cache
* Should not change the server
* Include all required data in the Universal Resource Location (URL)
* ASCII format only

**POST**
* Parameters in body
* Used for updating data
* No max length
* Not ok to cache
* Ok to change the server
* Binary data, images, and other files can be used

References: [diffen](http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests)

