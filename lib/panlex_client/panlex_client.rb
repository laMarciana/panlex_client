# panlex_client namespace
module PanlexClient
   # PanLex public API URL
   API_URL = 'http://api.panlex.org/'

   # Send a request to PanLex API.
   #
   # @param param [String] {http://dev.panlex.org/api/#urlparam PanLex API URL parameter}
   # @param body [#to_json] The request body which includes the query parameters. Look at the {http://dev.panlex.org/api/#globalparam global optional parameter} and the specifics for each URL parameter
   # @yieldparam response [String] The response from PanLex, a string you can parse to JSON
   # @yieldparam request [RestClient::Request]
   # @yieldparam result [Net::HTTPOK] 
   def self.query(param, body, &block)
      RestClient.post API_URL+param, body.to_json, { :content_type => :json, :accept => :json }, &block
   end
end
