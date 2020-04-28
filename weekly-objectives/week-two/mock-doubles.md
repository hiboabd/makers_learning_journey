## Broader goal - week 2
### * Continuing to work on TDD *
### * Dependency injection - Unit test classes in isolation using mocking *

### Dependency injection - what is it?

Dependency injection is a technique for helping you test classes in isolation. It allows a class to use either its real dependency, or a double.

### What are mocks and why are they useful?

A mock is an object used for testing. You use mocks to test the interaction between two objects (vs. value testing - see below).

In test driven development (TDD), mocking is a technique that involves using a fake object to stand in for another in order to write a test.

There are a couple of reasons why you may decide to use mock objects:

  1. As a replacement for objects that don’t exist yet.
  2. When you are working with objects which return non-deterministic values or depend on an external resource, e.g. an image processor gem file.
  3. To avoid setting up a complex scheme of data or dependency objects in order to write a test.
  4. To avoid invoking code which would degrade the performance of the test, while at the same time being unrelated to the test you are writing. (e.g. if you had to flip a image during the test, this would slow down performance)


### Difference Between Mock & Value Testing

In a regular test you check the return value of a method:

“Did this method return a flipped image?”

When using a mock you are testing the behaviour:

“Did we tell others the right thing to do (i.e. did the right method get passed to the object)

with the right information (i.e. with the right number of arguments in the method)

and exactly the right amount of times that we need? (i.e. was the method called the right number of times)”

### Difference between mocks, stubs and doubles

Method stubbing is the technique whereby fake methods are defined on mock/double objects. The double object is not very useful on its own and stubbing

A mock expects methods to be called, if they are not called the test will fail (i.e. the object has to be able to receive the method, or in other words the method has to be in the objects class).

A mock expects a specific message (i.e. a specific method) and if it isn't received it will raise an error.

For Example:
 ```
 expect(some_object).to receive(some_method).and_return(some_value)
 ```

A stub is only a method with a canned response, it doesn’t care about behaviour (i.e. that it can actually receive the method that was passed through it).

A stub avoids any meaningful computation or input/output (in other words it doesn't run anything).

```
allow(some_object).to receive(some_method).and_return(some_value)
```
A double is a generic term for any object that stands in for a real object during a test (think "stunt double"). You create one using the double method.

```
validator = double(:validator)
```

[ADD VERIFIED DOUBLE DEFINITION]

### Examples of mocks/doubles

Shorthand of combining double and stub syntax

[Source](http://rubyblog.pro/2017/10/rspec-difference-between-mocks-and-stubs)

```
validator = double(:validator)

allow(validator).to receive(:valid?).and_return(true)

validator = double(:validator, valid?: true)
```

First example (online example):

[Source](https://www.tutorialspoint.com/rspec/rspec_test_doubles.htm)

Second example (online example):

[Source](http://rubyblog.pro/2017/10/rspec-difference-between-mocks-and-stubs)

```
class DataProcessor
  Error = Class.new(StandardError)

  def process(data, validator)
    raise Error unless validator.valid?(data)

    # simple logic to show the idea
    "#{data} processed"
  end
end
```
