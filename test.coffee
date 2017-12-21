musicCtrl = require './controler/musicCtrl'

# musicCtrl.fetchMusicByPage
#   limit: 12
#   offset: 0
# .then (res) ->
#   console.log res

# musicCtrl.fetchMusicData()
# .then (res) ->
#   console.log res


# musicCtrl.deleteMusic
#   uuid: 14
# .then () ->
#   musicCtrl.fetchMusicData()
#   .then (res) ->
#     console.log res

# musicCtrl.addMusic
#   origin: 'https://www.audionetwork.com',
#   music_url: 'http://content2.audionetwork.com/Preview/tracks/mp3/v5res/ANW2868/07.mp3',
#   music_name: 'You Got It',
#   author_name: 'Bob Bradley',
#   musician_name: '鲍勃·布拉德利',
#   author_uuid: '2afeca88-164d-4a91-8b96-d7ee6847f327',
#   oss_path: 'songs/1510911208771ZJZLKEofd4qmWPMx01W2HQqn5XRFSi.mp3',
#   status: 'fail',
#   is_retry: 1,
#   is_download_success: 1,
#   is_upload_success: 0
# .then =>
#   console.log 'res'
# .catch (error) =>
#   console.log 'error', error


# musicCtrl.updateMusic
#     uuid : 11
#   ,
#    music_name: 'wplnancy'
#    is_retry: true
#    author_name: 'hahaha'
# .then (res) ->
#   console.log res

# .catch (error) ->
#   console.log error


# musicCtrl.queryMusic
#   uuid: 3
# .then (music) ->
#   console.log music
# .catch (error) ->
#   console.log error
