knex = require '../config/knex'

fetchMusicData = () ->
  knex.select().from('music')
  .then (musics) =>
    console.log musics

fetchMusicByPage = ({ limit, offset }) ->
  return new Promise (resolve, reject) ->
    knex.select().from('music').limit(limit).offset(offset)
    .then (musics) => resolve musics
    .catch (error) => reject error

queryMusic = (where) ->
  return new Promise (resolve, reject) ->
    knex.select().from('music').where(where)
    .then (music) => resolve music
    .catch (error) => reject error

addMusic = (music) ->
  return new Promise (resolve, reject) =>
    knex('music').insert(music)
    .then => do @fetchMusicData
    .catch (error) => reject error

updateMusic = (where, newMusic) ->
  return new Promise (resolve, reject) =>
    knex('music').where(where).update(newMusic)
    .then => do @fetchMusicData
    .catch (error) => reject error

deleteMusic = (where) ->
  return new Promise (resolve, reject) =>
    knex('music').where(where).del()
    .then => do @fetchMusicData
    .catch (error) => reject error

module.exports = {
  fetchMusicData
  fetchMusicByPage
  queryMusic
  addMusic
  updateMusic
  deleteMusic
}

