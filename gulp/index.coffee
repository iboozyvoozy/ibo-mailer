gulp = require('gulp')
fs = require('fs')

module.exports = ->

	for taskPath in fs.readdirSync('./gulp/tasks')
		taskName = taskPath.replace('.coffee', '')
		task = require("./tasks/#{taskName}")
		gulp.task taskName, task
	gulp
