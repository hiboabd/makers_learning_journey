require 'socket'
require_relative 'notes_class'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "What do you say?"

they_said = socket.gets.chomp

socket.puts "You said: #{they_said}. Goodbye!"

while true do
  user_input = socket.gets.chomp
  p "this is the user input #{user_input}"
  if user_input == "quit"
    break
  end
end

server.close
