express = require('express')
http = require('http')
path = require('path')

app = express()

app.configure ->
    app.set('port', process.env.PORT || 3001)

    app.use(express.bodyParser() )
    app.use(express.cookieParser() )
    app.use(express.methodOverride() )
    app.use(express.session({secret: 'suoer_secret'} ) )
    app.use(app.router)

    app.set('views', __dirname + '/views')
    app.set('view engine', 'jade')
    app.use(express.favicon() )
    app.use(express.logger('dev') )
    app.use(express.static(path.join(__dirname, 'public') ) )



if 'development' is app.get('env')
    app.use(express.errorHandler() )

app.get('/', (req,res)->
    res.render('index', {title: 'Express'}))

http.createServer(app).listen(app.get('port'), ->
    console.log('Express server listening to port ' + app.get('port')))
