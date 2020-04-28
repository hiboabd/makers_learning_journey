## Broader goal - week 2
### * * Explain some basic OO principles and tie them to high level concerns (e.g. ease of change) *

### Forwarding

In object-oriented programming, forwarding means that using a member of an object (either a property or a method) results in actually using the corresponding member of a different object: the use is forwarded to another object.

Forwarding is often confused with delegation, here is how they can be distinguished.

Metaphor: Think of receiving an email asking you to donate some money to a worthy charity.

  * If you forward the email to a friend, and the friend donates money, the friend is donating their own money and getting their own tax receipt.
  * If you delegate responding to your accountant, the accountant donates your money to the charity and you receive the tax receipt.

In forwarding, the receiver acts in its own context whereas in delegation the receiver acts on the behalf of the sender.

Forwarding example from secret diary task

```
class Diary
  def initialize
    @contents = "Eric Cantona is the best footballer"
  end

  def read
    @contents
  end
end

class SecretDiary
  def initialize
    @diary = Diary.new
    @unlocked = false
  end

  def unlock
    @unlocked = true
  end

  def lock
    @unlocked = false
  end

  def read
    return "Go away!" unless @unlocked
    @diary.read
  end
end

```

Forwarding steps
```
my_diary = SecretDiary.new
my_diary.unlock
my_diary.read   # the sender (:read) checks if the diary is unlocked and then forwards the request to the receiver (the :read method of the diary class)
```

### Polymorphism (same name, different behaviour)

Polymorphism is the characteristic of being able to assign a different meaning or usage to something in different contexts - allowing an object or a function to have more than one form.


Real world example:
  If anybody says CUT to these people:
    * The Surgeon
    * The Hair Stylist
    * The Actor

  What will happen?
    * The Surgeon would begin to make an incision.
    * The Hair Stylist would begin to cut someone’s hair.
    * The Actor would abruptly stop acting out of the current scene, awaiting directorial guidance.

Can draw a diagram of the relationships between the methods in a tree diagram fashion. An example (on shapes) can be found [here](http://icarus.cs.weber.edu/~dab/cs1410/textbook/13.Polymorphism/poly_and_virt.html)

### Polymorphism simple code example

### Abstraction (only showing relevant details to the user)

Abstraction means to perceive an entity (or object) in a system or context from a particular perspective. Any unnecessary details are removed and the sole focus is on aspects that are necessary to that context or system under consideration.

The process of describing things using only the important details for the task at hand.
In a computer context, this involves only providing attributes and methods to an object that are useful for the task at hand.


#### Abstraction continued

Abstraction can be broken down further into these core components.

1) Hiding unnecessary details

Every function can be seen as basic abstraction. For example, a programmer doesn't care about how tap_in() works.

2) Can have multiple implementations
One person may visualise an object or method differently to another person.

Take the example of the cat in this [source](https://medium.com/from-the-scratch/oop-everything-you-need-to-know-about-object-oriented-programming-aee3c18e281b). The old lady visualised (or designed) the animal differently to the surgeon. In the same way, you would need put different features in the Cat class, depending upon the need of the application.

The need of the application dictates the way the object will be designed.

### Abstraction simple code example
