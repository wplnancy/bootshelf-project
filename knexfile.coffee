path = require 'path'

module.exports =
  development:
    client: 'sqlite3'
    connection:
      filename: path.join __dirname, '/db/db.sqlite3'
    migrations:
      directory: path.join __dirname, '/db/migrations'
    seeds:
      directory: path.join __dirname, '/db/seeds'
    useNullAsDefault: true

  production:
    client: 'sqlite3'
    connection:
      filename: path.join __dirname, '/db/db.sqlite3'
    migrations:
      directory: path.join __dirname, '/db/migrations'
    seeds:
      directory: path.join __dirname, '/db/seeds'
    useNullAsDefault: true
