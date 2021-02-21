# README

## Prerequisites

- Ruby 2.7.2
- Docker + Docker Compose
- Yarn

## Whats here?

- Docker for database / Redis
- Stimulus
- Turbo (more so for just turbolinks)
- Regular ole CSS with a number of css variables
- Web Components via lit-element
- Storybook for web components
- Testing with web-test-runner for web components
- Linting / Formatting / Code analyzing

## Installation

```bash
yarn install && bundle install
```

## DB Setup

```bash
bin/db-setup
```

## Running the server

```bash
bundle exec rails server
./bin/webpack-dev-server
docker-compose up # Redis / Postgres run here
```

The above is also available in the [Procfile] in this repo.

## Bin commands

### `bin/lint`

Lints with Rubocop + Eslint + Prettier on {app,test}

### `bin/format`

Formats with Rubocop + Eslint + Prettier on {app,test}

### `bin/tests`

Will run all tests. Minitest + Capybara + Web Component tests

### `bin/guard`

File watching / Test watching / live reloading

### `bin/brakeman`

Check for security issues

### `bin/watch`

Watch for test changes and livereload the browser

### `bin/db-setup`

Is the equivalent of:

```bash
rails db:migrate && rails db:create && rails db:seed
```

## Cool features

### WEB COMPONENTS!

- Located in `app/assets/components`

To add a new component, simply copy the example component to a
new directory. Component names should contain at least 1 `-` and be
lower cased.

## Svg Icons provided by Heroicons

- https://heroicons.com/

## Architecture

To check out how this is structued, check out the [Architecture.md]
file.

## Additions?

[ ] - CableReady / Stimulus Reflex ?!
