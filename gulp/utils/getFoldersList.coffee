path = require('path')
fs = require('fs')

module.exports = (requestedPath, relative = false) ->

	resultFolders = []

	resultFoldersList = fs.readdirSync(requestedPath)
	for resultFolderPath in resultFoldersList
		normalPath = path.join(requestedPath, resultFolderPath)
		if fs.statSync(normalPath).isDirectory()
			if relative
				resultFolders.push(normalPath)
			else
				resultFolders.push(resultFolderPath)

	resultFolders
