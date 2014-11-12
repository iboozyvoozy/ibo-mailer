compression = require('compression')
express = require('express')
config = require('../config')
http = require('http')

app = express()
app.use compression()
app.use '/', express.static("#{config.dist}")

http.Server(app)
	.listen(process.env.PORT or config.port)
