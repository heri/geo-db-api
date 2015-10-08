# Geo Db API

A Rails application responding to airports, cities, countries, lakes, ports, regions and timezones searches with geospatial data. Uses fuzzy string matching

Response for request `/airports?name=london`:

```
[{"id":148,"coordinates_wkt":"POINT (-0.3762272673974393 51.8802952570969)","kind":"major","name":"London Luton","icao_code":"EGGW","iata_code":"LTN"},{"id":474,"coordinates_wkt":"POINT (-0.1629616391394559 51.155756751927456)","kind":"major","name":"London Gatwick","icao_code":"EGKK","iata_code":"LGW"},{"id":833,"coordinates_wkt":"POINT (-0.4531566520633094 51.47099587999384)","kind":"major","name":"London Heathrow","icao_code":"EGLL","iata_code":"LHR"},{"id":251,"coordinates_wkt":"POINT (-56.120177475472424 -15.651147019195495)","kind":"mid","name":"Marechal Rondon Int'l","icao_code":"SBCY","iata_code":"CGB"},{"id":208,"coordinates_wkt":"POINT (-99.94589590024634 49.904727941027694)","kind":"mid","name":"Brandon","icao_code":"CYBR","iata_code":"YBR"},{"id":230,"coordinates_wkt":"POINT (77.35078887791173 28.70779686010708)","kind":"mid","name":"Hindon Air Force Station","icao_code":"VIDX","iata_code":""},{"id":731,"coordinates_wkt":"POINT (96.13419461149468 16.90115428182508)","kind":"major","name":"Mingaladon","icao_code":"VYYY","iata_code":"RGN"},{"id":143,"coordinates_wkt":"POINT (-109.08269464526103 25.68850882609902)","kind":"mid","name":"Los Mochis","icao_code":"MMLM","iata_code":"LMM"},{"id":60,"coordinates_wkt":"POINT (-108.53692938812462 45.803685571527836)","kind":"major","name":"Logan Int'l","icao_code":"KBIL","iata_code":"BIL"},{"id":330,"coordinates_wkt":"POINT (1.25093205640014 6.16687362722297)","kind":"mid","name":"Lome Tokoin","icao_code":"DXXX","iata_code":"LFW"}]
```
It sends a list of aiports named `london`: london luton, london gatwick, london heathrow, as well less obvious airports such as Mingaladon which are similar.

Geospatial data such coordinates, sovereign country, formal name, economy level, iso_alpha2 code, iso_alpha3 code, iso_numeric3 code, continent and subregion are sent with each airport. Data is from the project https://github.com/delight-im/FreeGeoDB


## Trigram models

The ability to find places such Mingaladon or Hindon uses fuzzy text matching, based on probabilistic language model https://en.wikipedia.org/wiki/N-gram

## Installation

Clone:

    $ git clone git@github.com:heri/geo-db-api.git

    $ cd geo-db-api && bundle install

Update `config/database.yml` file to your database settings, and:

    $ cd db && unzip data.yml.zip

Return to main dir when finished

    $ cd ..

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

`/timezone?name=..&api_key=..`

## TODO

* geo requests (POSTGIS). e.g. nearest airport with params lat, long
* graphQL support
* front-end with openstreetmaps

## Contributing

1. Fork it ( http://github.com/heri/geo-db-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Contact

Heri

* [Code on Github](http://github.com/heri)
* [I write on Medium](http://medium.com/@heri)
* [twitter](http://twitter.com/heri)
* Photography [Instagram](https://instagram.com/heri_rakotomalala/) [500px](https://500px.com/heri)
* [Background site](http://madmedia.ca)
