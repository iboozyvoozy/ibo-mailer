paths = require('../paths')
argv = require('optimist').argv
gulp = require('gulp')

$ =
	stylus: require('gulp-stylus')
	plumber: require('gulp-plumber')
	autoprefixer: require('gulp-autoprefixer')

module.exports = ->

	stream = gulp.src(paths.styles.main)
		.pipe $.plumber()
		.pipe $.stylus()
		.pipe $.autoprefixer()
		.pipe gulp.dest(paths.styles.dest)
