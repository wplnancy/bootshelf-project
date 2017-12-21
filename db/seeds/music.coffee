musics = require '../../mock/music.json'

exports.seed = (knex, Promise) ->
  knex('music').del()
  .then () ->
    # Inserts seed entries
    knex('music').insert(musics)
