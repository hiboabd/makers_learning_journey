require 'exercise_3'


describe SayHello do
  context 'when run' do
    it 'sends a message' do
      email_double = double :email, message: Message
      email_client_class = double :email_client, new: email_double

      say_hello = SayHello.new(email_double)
      expect(say_hello.run).to eq nil
    end
  end
end
