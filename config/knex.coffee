environment = process.env.NODE_ENV or 'development'
knexfile = require '../knexfile'
knex = require('knex')(knexfile[environment])

module.exports = knex
