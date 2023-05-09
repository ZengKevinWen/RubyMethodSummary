require 'json'
require 'net/http'
load'./custom_exception.rb'
load'./custom_exception.rb'
p "------"
require './custom_exception'
require './custom_exception'

KevinException::MainException::most do
  p "------"
  p Net::HTTP::version_1_1?
  p Net::HTTP::version_1_2?
  uri = URI 'http://192.168.1.167:3000/api/home/index.json?demo=dasd'
  p "ok"
  res = JSON.parse(Net::HTTP.get_response(uri).body)
  res2 = JSON.parse(Net::HTTP.get uri)
  p "end"
  p res
  p res2

end

