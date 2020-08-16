require 'socket'

server = TCPServer.new(2345)

class NoteList
  def initialize()
    @notes = []
  end
end
