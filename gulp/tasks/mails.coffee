paths = require('../paths')
gulp = require('gulp')

$ =
	jade: require('gulp-jade')
	plumber: require('gulp-plumber')
	changed: require('gulp-changed')

module.exports = (onlyChanged = false) ->

	jadeConfig =
		pretty: true

	stream = gulp.src(paths.mails.src)

	if onlyChanged
		stream = stream.pipe $.changed(paths.mails.dest, extension: '.html')
		
	stream = stream
		.pipe $.plumber()
		.pipe $.jade(jadeConfig)
		.pipe gulp.dest(paths.mails.dest)
