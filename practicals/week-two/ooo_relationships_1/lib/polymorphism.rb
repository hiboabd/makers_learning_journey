## Polymorphism

class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def to(operation_class)
    chars = @contents.chars
    @contents = operation_class.modify(chars)
    @contents = @contents.join
  end

end

class Reverse
  def modify(chars)
    chars.reverse
  end
end


class Scramble
  def initialize(steps)
    @steps = steps
  end

  def modify(chars)
    scrambled_chars = chars.map do |char|
      (char.ord + @steps).chr
    end
  end
end


class Unscramble
  def initialize(steps)
    @steps = steps
  end

  def modify(chars)
    plain_chars = chars.map do |char|
      (char.ord - @steps).chr
    end
  end
end



def modify(object)
  chars = @contents.chars
  @contents = object.scramble(chars) if object.is_a?(Scramble)
  @contents = object.unscramble(chars) if object.is_a?(Unscramble)
  @contents = @contents.join
end


class Scramble
  def initialize(steps)
    @steps = steps
  end

  def scramble(chars)
    scrambled_chars = chars.map do |char|
      (char.ord + @steps).chr
    end
  end
end

class Unscramble
  def initialize(steps)
    @steps = steps
  end

  def unscramble(chars)
    plain_chars = chars.map do |char|
      (char.ord - @steps).chr
    end
  end
end

my_diary = ScrambledDiary.new("test contents")
my_diary.read
puts my_diary.modify(Scramble.new(1))
puts my_diary.modify(Unscramble.new(1))



# original code

class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble_by_advancing_chars(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end

  def unscramble_by_advancing_chars(steps)
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - steps).chr
    end
    @contents = plain_chars.join
  end

  def scramble_by_reversing
    @contents = @contents.reverse
  end

  def unscramble_by_reversing
    @contents = @contents.reverse
  end
end
