# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: math_functions.proto for package 'math_functions'

require 'grpc'
require_relative '../proto/math_functions_pb'

module MathFunctions
  module MathFunctions
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'math_functions.MathFunctions'

      rpc :FetchSum, InputNumbers, ResultNumber
      rpc :FetchProduct, InputNumbers, ResultNumber
      rpc :FetchDiff, InputNumbers, ResultNumber
    end

    Stub = Service.rpc_stub_class
  end
end
