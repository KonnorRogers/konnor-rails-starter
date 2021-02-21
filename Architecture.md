# Architecture of this repo

## Database

Postgres

## Generators

[config/initializers/generators.rb](config/initializers/generators.rb)

- Stylesheets disabled on new controller generation.
- Default to primary keys instead of auto-incrementing ids.

## Assets

### app/assets

Where all CSS / JS / Images are stored. We use webpacker here. Asset
pipeline is...meh

### app/assets/components

Where all web-components are stored

### app/assets/stylesheets/elements/custom-elements.css

All custom elements. These are elements like `flex-box` which may have
a formal web component associated.

### app/assets/stylesheets/components/web-components.css

All web-component based css as seen from `app/assets/components`

## CSS Structure

This repo uses the
[ITCSS](https://www.xfive.co/blog/itcss-scalable-maintainable-css-architecture/)
structure. I like the methodology, feel free to change it.
