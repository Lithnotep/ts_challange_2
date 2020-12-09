require 'net/http'
require 'uri'
require 'pry'

uri = URI('http://localhost:3000/people')

response = Net::HTTP.get(uri)
