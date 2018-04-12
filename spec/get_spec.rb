require 'rubygems'
require 'httparty'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

response = HTTParty.get("https://jsonplaceholder.typicode.com/posts")
puts "Status Code #{response.code}"
puts response.message