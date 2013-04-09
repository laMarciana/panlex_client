module PanlexClient
   API_URL = 'http://api.panlex.org/'

   def self.query(param, body)
      RestClient.post API_URL+param, body.to_json, :content_type => :json, :accept => :json
   end
end
