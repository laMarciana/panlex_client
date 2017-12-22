Gem::Specification.new do |s|
   s.name = 'panlex_client'
   s.version = '0.3.0'
   s.summary = 'Client for the PanLex database public API'
   s.description = 'https://github.com/laMarciana/panlex_client/'
   s.license = 'GPL3'
   s.homepage = 'https://github.com/laMarciana/panlex_client/'
   s.authors = ['Marc Busque']
   s.email = 'marc@lamarciana.com'
   s.files = `git ls-files`.split("\n")

   s.add_runtime_dependency "rest-client", "~>1.6"
   s.add_runtime_dependency "redcarpet", "~>2.2"

   s.add_development_dependency "rspec", "~>2.13"
end
