class User
  def initialize(name, bio, age)
    @name = name
    @bio = bio
    @age = age
  end

  def authenticate(candidate_password)
    return true if Authenticator.authenticate(candidate_password) == true
    false
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Authenticator(password)
  def initialize
    @password = password
  end

  def authenticate(candidate_password)
    candidate_password == @password
  end
end

hibo_a = User.new(hibo, hello, 23)
authenticate_user = Authenticate.new(password123)
hibo_a.authenticate(password123)
