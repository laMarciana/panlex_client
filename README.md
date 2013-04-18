# panlex\_client 
Simple Ruby client for the [public API](http://dev.panlex.org/api/) of the [Panlex Database](http://panlex.org).

## Usage

Right now, there is just a `PanlexClient` module with only one `query` method with two arguments: the URL parameter and the request body. It returns PanLex API response parsed to a Hash.

```ruby
require 'panlex_client'

response = PanlexClient.query 'lv', { :indent => true, :limit => 2 }

if response['status'] == 'OK' then
  response['result'].each do |language|
     puts language['tt']
  end
end

```

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
