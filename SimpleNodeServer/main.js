var http = require("http");


const PORT = 8080;

function handleRequest(request ,response) {
	response.end("and in case I don't see ya: Good afternoon, good evening, and good night! Path hit:" + request.url);


} 

var server = http.createServer(handleRequest); // linking local host

server.listen(PORT, function(){
	console.log("Server listening on: http://localhost:%s", PORT);

});