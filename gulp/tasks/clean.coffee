paths = require('../paths')
del = require('del')

module.exports = (cb) ->
	
	del(paths.dist, cb)
