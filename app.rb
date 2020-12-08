require 'socket'
require_relative './lib/parser.rb'


server  = TCPServer.new('localhost', 8080)

loop {
  client  = server.accept
  request = client.readpartial(2048)
  parse = Parser.new.parse(request)
}

