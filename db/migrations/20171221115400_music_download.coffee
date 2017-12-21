exports.up = (knex, Promise) ->
  return knex.schema.
    createTable 'music', (table) ->
      table.increments('uuid').primary()
      table.string('origin', 40).notNullable()
      table.string('music_url', 40).notNullable()
      table.string('music_name', 40).notNullable()
      table.string('author_name', 40).notNullable()
      table.string('musician_name', 40).notNullable()
      table.string('author_uuid', 20).notNullable()
      table.string('oss_path', 40).notNullable()
      table.string('status', 10).notNullable().defaultTo('waiting')

      table.boolean('is_retry').notNullable().defaultTo(false)
      table.boolean('is_download_success').notNullable().defaultTo(false)
      table.boolean('is_upload_success').notNullable().defaultTo(false)
      table.charset('utf8')

      table.timestamp('created_at').notNullable().defaultTo(knex.fn.now())
      table.timestamp('updated_at').notNullable().defaultTo(knex.fn.now())

exports.down = (knex, Promise) ->
  return knex.schema.
  dropTable('music')
