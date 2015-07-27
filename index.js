var express = require('express');

var PORT = 8080

var app = express();
app.use(express.static('public'))
// app.get('/', function (req, res) {
//   res.send('Hello, world\n')
// });

app.listen(PORT);
