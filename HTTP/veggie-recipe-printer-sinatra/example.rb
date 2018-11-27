require "erb"

name = "Corey"
message = "Hello, <%= name %>."
erb = ERB.new(message)

puts erb.result
