## Broader goal - week 3
### * * Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS) *

### What is DNS (Domain Name System)?

Useful resource: Explains DNS in comic book form and is the source of information for the explanation below [source](https://howdns.works/ep1/)

Computers and other devices communicate using IP addresses to identify each other on the internet. But humans can't remember IP addresses, so they use words.

DNS stands for domain name system and brings the two together (i.e. the words with the IP address).

The DNS is like directory enquiries for the internet. It allows us to give servers host names (e.g. google.com rather than 123.324.123.43).

(Note: An IP address is stands for Internet Protocol address and is a numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication.)

### How does DNS work?

  1. First, the browser checks its cache to see if it knows the address that has been inputted into the browser.
  2. If the address cannot be found, it goes to the operating system to check for the address.
  3. If the OS cannot find the address in its cache, it sends the request the resolver.
  4. The resolver server is usually your ISP (Internet Service Provider) and it checks for the address in its cache. If it cannot find it, it sends the request to the root. All resolvers must know one thing: where to locate the root server.
  5.
