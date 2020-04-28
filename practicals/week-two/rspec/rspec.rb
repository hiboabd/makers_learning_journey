=begin
We're going to build RSpec, step by step.

In the process, we'll prove to ourselves that our tools aren't magic. They're made up of simple concepts that we can understand, with enough time and thoughtfulness.

[source](https://github.com/makersacademy/skills-workshops/blob/master/practicals/adventures/learning_by_building_rspec.md)
=end

def equal_to_be_equal(boolean_1, boolean_2)
  if boolean_1 && boolean_2
    "Test passes! :)"
  else
    "Test fails! D:"
  end
end



class Expect
  def initialize(boolean)
    @boolean = boolean
  end

  def to_equal(another_boolean)
    if @boolean && another_boolean
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end

  def to(comparison)
    p comparison.compare(@boolean)
    p @boolean
    if comparison.compare(@boolean)
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end

class Equal
  def initialize(boolean)
    @boolean = boolean
  end

  def compare(value)
    if @boolean && value
      true
    else
      false
    end
  end
end

def expect(value)
  Expect.new(valuße)
end

def eq(value)
  Equal.new(value)
end

# ßexpect(true).to(eq(true))

# Do extension if you have time
