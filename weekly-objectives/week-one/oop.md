## Broader goal - week 1
### * Describe some basic OO principles like encapsulation, SRP *

#### What is encapsulation?

  1. Encapsulation is the principle of grouping objects and behaviours into a single unit, known as a class.
  2. This means that the internal representation of an object (i.e. its value and its behaviour) is hidden from view outside of where the object is defined (i.e. outside of the objects class).  
  3. In order to access the data of the attributes of a class and/or manipulate its value, getter and setter methods are required.


#### Example of encapsulation
Example provided by: https://medium.com/the-renaissance-developer/ruby-101-object-oriented-programming-part-2-80b3eca2a318

For this example below, a Person class is implemented and an instance of the class is initialized.

```
class Person
  def initialize(name, age)
    @name = name
    @age  = age
  end
end

tk = Person.new("Leandro Tk", 24)
```

This class has three attributes; the method initialize, the instance variable name and the instance variable age.

When the tk instance of the class was initialized, the name variable was set to the value "Leonardo Tk" and the age variable was set to "24".

Next, we try and retrieve the value of the name variable. Your first instinct might be to call the name variable and even to call a method on the tk instance. However neither will work.

```
@name
> nil

tk.name

> NoMethodError: undefined method `name' for #<Person:0x0055a750f4c520 @name="Leandro Tk", @age=24>

```

This throws a NoMethodError as the name method has not yet been implemented in the Person class. A method is required to access this data.

However, as these variables are instance variables and belong to a class, only the object's own methods can access its instance variables. In other words, only methods within the Person class can access and retrieve the value of a particular instance variable.

These methods, whose sole purpose is to return the value of a particular instance variable, are known as getter methods.

```
class Person
  def initialize(name, age)
    @name = name
    @age  = age
  end

  def name
    @name
  end

  def age
    @age
  end
end
```
The getter method here is the name and age method. And now if tk.name is called we can access the information of the name variable. This ensures the tk object is only able to access the its own name and age data.

Getter methods can be shortened by using the attr_reader syntax.

```
class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age  = age
  end
end
```
This will create the method written above for the name and age instance variables.

#### What is SRP?

  1. This stands for Single Responsibility Principle.
  2. States that a class should have only one responsibility and it should fully execute that responsibility.
  3. It is part of a group of guidelines (SOLID) that focus on making code changes as side effect free as possible (i.e. limiting the impact of change).
  4. But what does responsibility mean in this context? Responsibility is defined by Robert Martin as one reason to change.
  5. To follow this principle means to "Gather together the things that change for the same reasons. Separate those things that change for different reasons."  

#### Example of SRP
