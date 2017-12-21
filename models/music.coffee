Bookshelf = require('../config/bookshelf');

Music = Bookshelf.Model.extend
  tableName: 'music'

module.exports = Bookshelf.model 'Music', Music
