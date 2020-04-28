## Broader goal - week 2
### * Unit test classes in isolation using mocking *

#### What is a double?

#### What is a dependency?

#### When do we use a double? (consider coding a short example)

#### What is dependency injection? (consider coding a short example) (edited)

The best definition I've found so far is one by James Shore:

"Dependency Injection" is a 25-dollar term for a 5-cent concept. [...] Dependency injection means giving an object its instance variables. [...].
There is an article by Martin Fowler that may prove useful, too.

Dependency injection is basically providing the objects that an object needs (its dependencies) instead of having it construct them itself. It's a very useful technique for testing, since it allows dependencies to be mocked or stubbed out.

[source](https://stackoverflow.com/questions/130794/what-is-dependency-injection)
