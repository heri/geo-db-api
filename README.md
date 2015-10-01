# Geo Db API

A Ruby on Rails application responding to geographical name requests for airports, cities, countries, lakes, ports, regions and timezones with geospatial data.

For instance, a request `countries?name=gr` will have the results `greece, grenada, greenland, montenegro, saint vincent and the grenadines` and their corresponding geospatial data (coordinates, sovereign country, formal name, economy level, iso_alpha2 code, iso_alpha3 code, iso_numeric3 code, continent and subregion)

Data is from the project https://github.com/delight-im/FreeGeoDB


## Installation

Clone:

    $ git clone git@github.com:heri/geo-db-api.git

    $ cd geo-db-api && bundle

Update `config/database.yml` file to your database settings

    $ unzip db/data.yml.zip

Import geo data

    $ rake db:data:load

Launch server

    $ rails server


## Available requests

Prefixed with your app url:

`/airports?name=..`

`/cities?name=..`

`/countries?name=..`

`/lakes?name=..`

`/ports?name=..`

`/regions?name=..`

`timezone?name=..`

## TODO

* Use postgresql instead of MySQL for geo requests (POSTGIS)
* API key to throttle user requests

## Contributing

1. Fork it ( http://github.com/heri/geo-db-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
