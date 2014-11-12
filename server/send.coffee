nodemailer = require('nodemailer')
fs = require('fs')

html = fs.readFileSync('./dist/inline/index.html').toString()

transporter = nodemailer.createTransport
	service: 'Gmail'
	auth:
		user: ''
		pass: ''

options =
	from: ''
	to: ''
	subject: ''
	html: html

transporter.sendMail options, (err, info) ->
	throw err if err
	console.log "Done: #{info.response}"
