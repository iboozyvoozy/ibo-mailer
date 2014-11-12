paths = require('../paths')
config = require('../../config')
browsersync = require('browser-sync')

module.exports = (cb) ->

	files = ["#{paths.dist}/**/*"]

	config =
		proxy: "localhost:#{config.port}"
		ports:
			min: config.port + 1
			max: config.port + 1
		browser: []
		ghostMode:
			forms: true
			clicks: true
			scroll: true
			location: true

	browsersync.init(files, config)
	cb()
