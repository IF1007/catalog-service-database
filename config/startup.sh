#!/bin/bash

# tells the bash script to exit whenever anything returns a non-zero return value.
set -e

# will check current database schema version. First time, this will throw an
# error in the server logs because the database will not exist. After the error,
# the database will be created, the schema will be loaded and seeded.
rails db:version || bundle exec rails db:setup

# run migrations
rails db:migrate

# start puma
exec bundle exec rackup -p 3000 -o 0.0.0.0