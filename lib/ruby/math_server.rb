require '../proto/math_functions_services_pb'
require 'grpc'

class ServerImpl < MathFunctions::MathFunctions::Service
  def initialize; end

  def fetch_sum(nums, _call)
    p nums
    res = MathFunctions::ResultNumber.new(result: nums.n1 + nums.n2)
    p res
    res
  end
end

server = GRPC::RpcServer.new

server.add_http2_port('127.0.0.1:5605', :this_port_is_insecure)

server.handle(ServerImpl.new)
server.run_till_terminated