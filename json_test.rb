require 'cgi'
require 'json'
require 'open-uri'
require 'pp'

term = "tennis shoes"
key = "b05dcd698e5ca2eab4a0cd1eee4117e7db2a10c4"

url = "http://api.zappos.com/Search?term=#{CGI.escape(term)}&key=#{key}"

puts url

result = JSON.parse(open(url).read)

result['results'].each do |a|
  pp a['brandName']
end
