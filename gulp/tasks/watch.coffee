sequence = require('run-sequence')
config = require('../../config')
paths = require('../paths')
gulp = require('gulp')

tasks =
	mails: require('./mails')
	styles: require('./styles')
	inline: require('./inline')

module.exports = ->

	gulp.watch(paths.styles.src).on 'change', ->
		tasks.styles().on 'end', -> tasks.inline()

	gulp.watch(paths.jade.src).on 'change', ->
		tasks.mails()
		
	gulp.watch(paths.mails.src).on 'change', ->
		tasks.mails(true)

	gulp.watch(paths.inline.src).on 'change', ->
		tasks.inline(true)
