require 'rubygems'
require 'httparty'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

response = HTTParty.delete("https://jsonplaceholder.typicode.com/posts/1",
    body: {
        userId: 1
    })
puts "Status Code #{response.code}"
puts response.message