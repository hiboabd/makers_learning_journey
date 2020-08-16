## Broader goal - week 3
### * * Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS) *

#### What is Rack?

Rack is an interface that sits between two other components that need to work together.

When building web apps with Ruby there are two components that need to work together; the web server and the Ruby app.

Rack compliant code must have the following characteristics.

  1. It must respond to ```call```
  2. The ```call``` method must accept a single argument. This argument is typically called ```env``` and bundles all of the data about the request.
  3. The call method must return an array of three elements. In order, these elements are; ```status``` for the HTTP status code, ```Headers``` and ```body``` for the actual content of te response.

#### Example Rack application

The following code sample shows a bare-bones Rack-compliant application that simply returns the text "Hello World".

```
require "rack"
require "thin"

class HelloWorld
  def call(env)
    [ 200, { "Content-Type" => "text/plain" }, ["Hello World"] ]
  end
end

Rack::Handler::Thin.run HelloWorld.new
```

The following methods are available on the request information:



Note: Rack expects the body portion of the response array to respond to each, so bare strings need to be wrapped in an array.

You can also obtain information about the request and use that information to your liking. For example, you can use that information to prevent someone with a specific ip address from accessing your page.  

```
require 'rack'
handler = Rack::Handler::Thin
class RackApp
  def call(env)
    req = Rack::Request.new(env)
    if req.ip == "5.5.5.5"
      [403, {}, ""]
    else
      [200, {"Content-Type" => "text/plain"}, "Hello from Rack"]
    end
  end
end
handler.run RackApp.new
```

The following methods are available on the request information:

  1. path_info (/articles/1)
  2. ip (of user)
  3. user_agent (Chrome, Firefox, Safari…)
  4. request_method (get / post)
  5. body (contents)
  6. media_type (plain, json, html)


To chain the
