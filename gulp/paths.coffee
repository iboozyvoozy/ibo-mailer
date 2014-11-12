config = require('../config')


SRC = config.src
DIST = config.dist


module.exports =

	src: SRC
	dist: DIST

	styles:
		cwd: "#{SRC}/stylus"
		dest: "#{DIST}/css"
		main: ["#{SRC}/stylus/main.styl"]
		src: ["#{SRC}/stylus/**/*"]

	mails:
		src: "#{SRC}/jade/mails/**/*"
		dest: "#{DIST}"

	jade:
		src: [
			"#{SRC}/jade/common/**/*"
			"#{SRC}/jade/includes/**/*"
		]

	inline:
		dest: "#{DIST}/inline"
		src: ["#{DIST}/*.html"]
