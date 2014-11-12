paths = require('../paths')
gulp = require('gulp')

$ =
	inline: require('gulp-inline-css')
	changed: require('gulp-changed')

module.exports = (onlyChanged = false) ->

	stream = gulp.src(paths.inline.src)

	if onlyChanged
		stream = stream.pipe $.changed(paths.inline.dest)

	stream = stream
		.pipe $.inline()
		.pipe gulp.dest(paths.inline.dest)
