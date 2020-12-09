require 'socket'
require 'json'
require_relative './lib/parser.rb'
require_relative './lib/response.rb'

Dir[File.join(File.dirname(__FILE__), 'app/controllers', '**', '*.rb')].sort.each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'app/models', '**', '*.rb')].sort.each {|file| require file }


server  = TCPServer.new('localhost', 8080)

loop {
  client  = server.accept
  request = Parser.new.parse(client.readpartial(2048))
  names = {"data": [["mitrani","max"]]}
  response = Response.new(code: 200, data: names.to_json)
  response.send(client)
}

