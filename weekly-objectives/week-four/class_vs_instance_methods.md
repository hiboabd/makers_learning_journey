## Week 4 - Class vs. instance methods

### Ruby instance methods

The Ruby Style Guide indicates that the preferred way to define instance methods is def ClassName.method.

```ruby
class Foo
  def bar
    p 'This is an instance method' d
  end
end

foo = Foo.new
foo.bar

```

Examples of it's use include:
  - my_notebook = NoteBook.new., my_notebook.read - returns the contents of the my_notebook object that has been created. Calling the method on the Notebook class would lead to a NoMethodError.


### Ruby class methods

The Ruby Style Guide indicates that the preferred way to define class methods is def self.method.

```ruby
class Foo
  def self.bar
    p 'This is a class method'
  end
end

Foo.bar

foo = Foo.new
foo.bar
```

Examples of it's use include:
  - Array.sample - returns a random element in an array. It is not specific to a specific instance or object of the class.
  - Example.is_a? Object
  - Example.class
