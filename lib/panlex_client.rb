%w[
   rest-client
   json
].each do |lib|
   require lib
end

require_relative 'panlex_client/panlex_client'
