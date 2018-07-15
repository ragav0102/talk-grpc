require_relative '../proto/math_functions_services_pb'
require 'grpc'

stub = MathFunctions::MathFunctions::Stub.new('127.0.0.1:5605', :this_channel_is_insecure)

while true
  input = MathFunctions::InputNumbers.new(n1: rand(10), n2: rand(15))
  p "Inputs: #{input.n1}, #{input.n2}"
  res = stub.fetch_sum(input)
  p res.result
  sleep(5)
end
