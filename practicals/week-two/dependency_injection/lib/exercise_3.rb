# Exercise 3

class EmailClient
  def message
    Message.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHello
  attr_reader :email
  
  def initialize(email = EmailClient.new)
    @email = email
  end

  def run
    @email.message.send("friend@example.com", "HELLO!")
  end


end
