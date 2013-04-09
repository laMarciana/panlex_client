Gem::Specification.new do |s|
   s.name = 'panlex_client'
   s.version = '0.1.0'
   s.summary = 'Client for the PanLex database public API'
   s.description = 'https://github.com/laMarciana/panlex_client/'
   s.license = 'GPL3'
   s.homepage = 'https://github.com/laMarciana/panlex_client/'
   s.authors = ['Marc Busqué']
   s.email = 'marc@lamarciana.com'
   s.files = `git ls-files`.split("\n")
   s.extra_rdoc_files = ['README.md']

   s.add_development_dependency "rest-client", "~>1.6"
end
