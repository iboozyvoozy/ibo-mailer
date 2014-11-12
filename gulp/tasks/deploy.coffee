$ =
	shell: require('gulp-shell')

module.exports = $.shell.task [
	"git add -A"
	"git commit -m 'New build'"
	"git push origin master"
]
