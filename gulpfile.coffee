sequence = require('run-sequence')
gulp = require('./gulp')()


gulp.task 'default', ->

	sequence.apply @, [

		'clean'
		'styles'
		'mails'
		'inline'
		'watch'
		'server'
		'browsersync'

	]
