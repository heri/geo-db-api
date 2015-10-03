# Geo Db API

A Rails application responding to airports, cities, countries, lakes, ports, regions and timezones searches with geospatial data. Uses fuzzy string matching

For instance, a request `countries?name=grenadines&api_key=..` will send `saint vincent and the grenadines` and its geospatial data : coordinates, sovereign country, formal name, economy level, iso_alpha2 code, iso_alpha3 code, iso_numeric3 code, continent and subregion

The application uses fuzzy searches so results can be found even if there are typos

Data is from the project https://github.com/delight-im/FreeGeoDB


## Installation

Clone:

    $ git clone git@github.com:heri/geo-db-api.git

    $ cd geo-db-api && bundle

Update `config/database.yml` file to your database settings

    $ unzip db/data.yml.zip

Import geo data

    $ rake db:data:load

Index database to enable fuzzy string matching

    $ rake index:fuzzy

This might take time!

Add or delete api keys that you will give to users `config/initializers/app_initializer.rb`. If preferable, you can also delete the line to authorize requests without api keys

Launch server

    $ rails server


## Available requests

Prefixed with your app url:

`/airports?name=..&api_key=..`

`/cities?name=..&api_key=..`

`/countries?name=..&api_key=..`

`/lakes?name=..&api_key=..`

`/ports?name=..&api_key=..`

`/regions?name=.&api_key=...`

`timezone?name=..&api_key=..`

## TODO

* Use postgresql instead of MySQL for geo requests (POSTGIS)

## Contributing

1. Fork it ( http://github.com/heri/geo-db-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
