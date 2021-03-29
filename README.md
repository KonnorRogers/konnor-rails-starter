# README

## Prerequisites

- Ruby 2.7.2
- Docker + Docker Compose
- Yarn

## Whats here?

- Docker for database / Redis
- Stimulus
- Turbo (more so for just turbolinks)
- Linting / Formatting / Code analyzing

## Installation

```bash
yarn install && bundle install
```

## DB Setup

```bash
bundle exec rails db:create
bundle exec rails db:migrate
```

## Running the server

```bash
bundle exec rails server
./bin/vite dev
docker-compose up # Redis / Postgres run here
```

The above is also available in the [Procfile](Procfile) in this repo.

## Bin commands

### `bin/lint`

Lints with Rubocop + Eslint + Prettier on {app,test}

### `bin/format`

Formats with Rubocop + Eslint + Prettier on {app,test}

### `bin/tests`

Will run all tests. Minitest + Capybara + Web Component tests

### `bin/brakeman`

Check for security issues

### `bin/watch`

Watch for test changes and livereload the browser

## Svg Icons provided by Heroicons

- https://heroicons.com/

## Architecture

To check out how this is structured, check out the
[Architecture.md](Architecture.md) file.

## Additions?

[ ] - CableReady / Stimulus Reflex ?!
