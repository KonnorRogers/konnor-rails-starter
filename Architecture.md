# Architecture of this repo

## Location

- Geocoder for location generation http://www.rubygeocoder.com/

## Database

Postgres https://www.postgresql.org/docs/

## Rails Generators

[config/initializers/generators.rb](config/initializers/generators.rb)

- Stylesheets disabled on new controller generation.
- Default to primary keys instead of auto-incrementing ids.

## Assets

### app/assets

Where all CSS / JS / Images are stored. We use webpacker here. Asset
pipeline is...meh
