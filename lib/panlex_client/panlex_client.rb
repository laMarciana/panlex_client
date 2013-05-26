# panlex_client namespace
module PanlexClient
   # PanLex public API URL
   API_URL = 'http://api.panlex.org/'

   # Send a request to PanLex API and return JSON.
   #
   # @param param [String] {http://dev.panlex.org/api/#urlparam PanLex API URL parameter}
   # @param body [#to_json] The request body which includes the query parameters. Look at the {http://dev.panlex.org/api/#globalparam global optional parameter} and the specifics for each URL parameter
   # @return [Hash] {http://dev.panlex.org/api/#globalparam PanLex API response} 
   def self.query(param, body)
     begin
       response = RestClient.post API_URL+param, body.to_json, { 'content-type' => :json, :accept => :json, 'accept-encoding' => 'gzip' }
       JSON.parse(response)
     rescue RestClient::ExceptionWithResponse => e
       raise e
     end
   end
end
