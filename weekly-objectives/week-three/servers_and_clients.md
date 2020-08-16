## Broader goal - week 3
### * * Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS) *

### What is a server and a client?

The World Wide Web is an information space made up of two chief components: resources (mostly stored on servers), and the entities that request those resources (usually called clients).

#### A server

A server is a piece of computer hardware that provides services to other pieces of hardware or software known as clients.

#### A client

A client is a piece of computer hardware or software that accesses a service made available by a server.

If the server is on another computer system to the client, it accesses that server by way of a network.

Examples of clients include:
  - A browser (i.e. Firefox, Chrome, Safari)

#### What is HTTP?

HTTP, stands for HyperText Transfer Protocol, defines the format for how documents can be served over the internet.
A client makes a request to a server and gets back a response.
It is called a "protocol" because it has a defined structure for requests and responses.


### How does this all work?

A simplified diagram of how clients and serves work together can be found below. [Source](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)

In client-server protocols, like HTTP, sessions consist of three phases:

  1. The client establishes a TCP connection (or the appropriate connection if the transport layer is not TCP).

    - In client-server protocols, it is the client which establishes the connection. (note: a client server protocol is essentially the 'language' in which the client and server communicate e.g. HTTP).
    - Opening a connection in HTTP means initiating a connection in the underlying transport layer, usually this is TCP (for definition see below).
    - With TCP the default port, for an HTTP server on a computer, is port 80.

  2. The client sends its request, and waits for the answer.

    - The first line contains a request method followed by its parameters: the path of the document, i.e. an absolute URL without the protocol or domain name, the HTTP protocol version
    - Subsequent lines represent an HTTP header, giving the server information about what type of data is appropriate (e.g., what language, what MIME types), or other data altering its behaviour (e.g., not sending an answer if it is already cached). These HTTP headers form a block which ends with an empty line.
    - The final block is an optional data block, which may contain further data mainly used by the POST method.

    Example:

        ```
        GET / HTTP/1.1  
        Host: developer.mozilla.org   
        Accept-Language: fr
        ```
  3. The server processes the request, sending back its answer, providing a status code and appropriate data.

  After the connected agent has sent its request, the web server processes it, and ultimately returns a response. Similar to a client request, a server response is formed of text directives, separated by CRLF, though divided into three blocks:

    - The first line, the status line, consists of an acknowledgment of the HTTP version used, followed by a status request (and its brief meaning in human-readable text).
    - Subsequent lines represent specific HTTP headers, giving the client information about the data sent (e.g. type, data size, compression algorithm used, hints about caching). Similarly to the block of HTTP headers for a client request, these HTTP headers form a block ending with an empty line.
    - The final block is a data block, which contains the optional data.

  Example:

        ```
        HTTP/1.1 200 OK
      Content-Type: text/html; charset=utf-8
      Content-Length: 55743
      Connection: keep-alive
      Cache-Control: s-maxage=300, public, max-age=0
      Content-Language: en-US
      Date: Thu, 06 Dec 2018 17:37:18 GMT
      ETag: "2e77ad1dc6ab0b53a2996dfd4653c1c3"
      Server: meinheld/0.6.1
      Strict-Transport-Security: max-age=63072000
      X-Content-Type-Options: nosniff
      X-Frame-Options: DENY
      X-XSS-Protection: 1; mode=block
      Vary: Accept-Encoding,Cookie
      Age: 7


      <!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="utf-8">
        <title>A simple webpage</title>
      </head>
      <body>
        <h1>Simple HTML5 webpage</h1>
        <p>Hello, world!</p>
      </body>
      </html>
        ```
#### HTTP response codes

  HTTP response status codes indicate if a specific HTTP request has been successfully completed. Responses are grouped into five classes: informational responses, successful responses, redirects, client errors, and servers errors.

  - 200: OK. The request has succeeded.
  - 301: Moved Permanently. This response code means that the URI of requested resource has been changed.
  - 404: Not Found. The server cannot find the requested resource.


### Other components include:

  - Your internet connection: Allows you to send and receive data on the web.
  - TCP/IP: Transmission Control Protocol and Internet Protocol are communication protocols that define how data should travel across the web.
  - DNS: Domain Name Servers are like an address book for websites. When you type a web address in your browser, the browser looks at the DNS to find the website's real address before it can retrieve the website. The browser needs to find out which server the website lives on, so it can send HTTP messages to the right place.
  - Client-server protocol: A communications protocol that provides a structure for requests between client and server in a network
  - Component files: A website is made up of many different files, which are like the different parts of the goods you buy from the shop. These files come in two main types:
    - Code files: Websites are built primarily from HTML, CSS, and JavaScript.
    - Assets: This is a collective name for all the other stuff that makes up a website, such as images, music, video, Word documents, and PDFs.
