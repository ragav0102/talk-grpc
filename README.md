# talk-grpc

Refer this for installing protoc

https://medium.com/@erika_dike/installing-the-protobuf-compiler-on-a-mac-a0d397af46b8

Generating ruby files:

grpc_tools_ruby_protoc  -I ../protos --ruby_out=../ruby --grpc_out=../ruby ../protos/math_functions.proto

Install ruby gems:

gem install grpc
gem install grpc-tools


