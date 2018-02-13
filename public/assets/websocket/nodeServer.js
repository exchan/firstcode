var socket = require( 'socket.io' );
var express = require( 'express' );
var https = require( 'https' );
var fs = require('fs');
var forceSsl = require('express-force-ssl');

var app = express();
var server = https.createServer( {
 key: fs.readFileSync('encryption/globecryptomarkets_com.key'),
 cert: fs.readFileSync('encryption/globecryptomarkets_com.crt'),
 ca: fs.readFileSync('encryption/globecryptomarkets_com.ca-bundle'),
}, app );

app.use(forceSsl);

var io = socket.listen( server );

io.set('transports',['xhr-polling']);
io.sockets.on( 'connection', function( client ) {
console.log( "New client !" );
	
	client.on( 'message', function( data ) {
		console.log( 'Message received ' + data.name + ":" + data.message );
		//client.broadcast.emit( 'message', { name: data.name, message: data.message } );
		io.sockets.emit( 'message', data);
	});

	client.on( 'doTrade', function( data ) {
		//console.log( 'Message received ' + data.name + ":" + data.message );
		io.sockets.emit( 'doTrade', data );
	});
}); 
server.listen( 8081 ); 

app.get('/', function (req, res) {
  res.header('Content-type', 'text/html'); 
  return res.end('wellcome!');
});
