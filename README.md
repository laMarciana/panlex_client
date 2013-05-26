# panlex\_client 

Simple Ruby client for the [public API](http://dev.panlex.org/api/) of the [PanLex Database](http://panlex.org). It uses [rest-client](https://github.com/adamwiggins/rest-client) gem.

## Usage

Right now, there is just a `PanlexClient` module with only one `query` method wich takes two arguments: the URL parameter and the request body. It returns PanLex API response parsed to a Hash or raises an exception with the response in it.

```ruby
require 'panlex_client'

begin
  response = PanlexClient.query 'lv', { :indent => true, :limit => 2 }
  response['result'].each do |language|
    puts language['tt']
  end
rescue RestClient::ExceptionWithResponse => e
  puts JSON.parse(e.response)['message']
end
```

## Relase Policy

panlex_client follows the principles of [semantic versioning](http://semver.org/). panlex_client is still in an 0.x.y version, so it is not considered stable and anything can change at any moment.

## LICENSE

Copyright 2013 Marc Busqué - <marc@lamarciana.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
