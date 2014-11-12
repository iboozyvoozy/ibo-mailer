# mailer

### Simple build system for html emails with inlined CSS

##### Convert this
'''jade
head
	link(rel="stylesheet" href="css/main.css")
body
	p Hello
'''

##### into this
'''html
<head></head>
<body><p style="color:red;">Hello</p></body>
'''

Preprocessors:
- jade
- stylus

Fight!
```
npm i
gulp
```

Inlined html is in ```dist/inline/```

Simple script for sending email is in ```server/send.coffee```
