module PanlexClient
   API_URL = 'http://api.panlex.org/'

   def self.query(param, body, &block)
      RestClient.post API_URL+param, body.to_json, { :content_type => :json, :accept => :json }, &block
   end
end
