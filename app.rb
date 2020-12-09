require 'socket'
require 'json'
require_relative './lib/parser.rb'
require_relative './lib/response.rb'

Dir[File.join(File.dirname(__FILE__), 'app/controllers', '**', '*.rb')].sort.each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'app/models', '**', '*.rb')].sort.each {|file| require file }
Dir[File.join(File.dirname(__FILE__), 'app/serializers', '**', '*.rb')].sort.each {|file| require file }


server  = TCPServer.new('localhost', 3000)

loop {
  puts "Listening....."
  client  = server.accept
  puts "Client connection established"
  request = Parser.new.parse(client.read(2048))
  response = RoutePrep.new.route(request)
  puts "Response Prepared"
  response.send(client)
  puts "Response sent"
}

