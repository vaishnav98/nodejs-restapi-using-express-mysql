var http = require("http");
var express = require('express');
var cors= require('cors');
var app = express();
var mysql= require('mysql');
var bodyParser = require('body-parser');

//start mysql connection
var connection = mysql.createConnection({
  host     : 'localhost', //mysql database host name
  user     : 'debian', //mysql database user name
  password : 'temppwd', //mysql database password
  database : 'MQTTData' //mysql database name
});

connection.connect(function(err) {
  if (err) throw err
  console.log('You are now connected with mysql database...')
})
//end mysql connection
app.use(cors());
//start body-parser configuration
app.use( bodyParser.json() );       // to support JSON-encoded bodies
app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
  extended: true
}));
//end body-parser configuration

//create app server
var server = app.listen(80,  "127.0.0.1", function () {

  var host = server.address().address
  var port = server.address().port

  console.log("Example app listening at http://%s:%s", host, port)

});

//rest api to get all customers
app.get('/client', function (req, res) {
   connection.query('select * from MQTTClientData', function (error, results, fields) {
	  if (error) throw error;
	  res.end(JSON.stringify(results));
	});
});
//rest api to get a single customer data
app.get('/client/:id', function (req, res) {

   connection.query('select * from MQTTClientData where ClientID=?', [req.params.id], function (error, results, fields) {
	  if (error) throw error;
	  res.end(JSON.stringify(results[0]));
	});
});

//rest api to get all customers
app.get('/data/:id', function (req, res) {
  console.log(req.params.id)
   connection.query('select * from MQTTDataExpanded where ClientID=?', [req.params.id], function (error, results, fields) {
	  if (error) throw error;
	  res.end(JSON.stringify(results));
	});
});
//rest api to get a single customer data
app.get('/datalatest/:id', function (req, res) {
   connection.query('select * from MQTTDataExpanded where ClientID=? ORDER BY TimeStamp DESC LIMIT 1', [req.params.id], function (error, results, fields) {
	  if (error) throw error;
	  res.end(JSON.stringify(results[0]));
	});
});

//rest api to create a new customer record into mysql database
app.post('/client', function (req, res) {
   var params  = req.body;
   console.log(params);
   connection.query('INSERT INTO MQTTClientData SET ?', params, function (error, results, fields) {
	  if (error) throw error;
	  res.end(JSON.stringify(results));
	});
});

//rest api to update record into mysql database
app.put('/client', function (req, res) {
   connection.query('UPDATE `MQTTClientData` SET `ClientName`=?,`ClientPassword`=?,`ClientMobile`=? `Load1Name`=? `Load2Name`=? `Load3Name`=? `Load4Name`=? `Load5Name`=? `Load6Name`=? `Load7Name`=? `Load8Name`=? `Load9Name`=? `Load10Name`=? `Load11Name`=? `Load12Name`=? `Load13Name`=? `Load14Name`=? `Load15Name`=? `Load16Name`=? `Load17Name`=? `Load18Name`=? `Load19Name`=? `Load20Name`=? `Load1P`=? `Load2P`=? `Load3P`=? `Load4P`=? `Load5P`=? `Load6P`=? `Load7P`=? `Load8P`=? `Load9P`=? `Load10P`=? `Load11P`=? `Load12P`=? `Load13P`=? `Load14P`=? `Load15P`=? `Load16P`=? `Load17P`=? `Load18P`=? `Load19P`=? `Load20P`=?  where `ClientID`=?', [req.body.ClientName, req.body.ClientPassword, req.body.ClientMobile, req.body.Load1Name,
     req.body.Load2Name, req.body.Load3Name, req.body.Load4Name, req.body.Load5Name, req.body.Load6Name, req.body.Load7Name, req.body.Load8Name, req.body.Load9Name, req.body.Load10Name,
      req.body.Load11Name, req.body.Load12Name, req.body.Load13Name, req.body.Load14Name, req.body.Load15Name, req.body.Load16Name, req.body.Load17Name, req.body.Load18Name, req.body.Load19Name, req.body.Load20Name,
      req.body.Load1P, req.body.Load2P, req.body.Load3P, req.body.Load4P, req.body.Load5P, req.body.Load6P, req.body.Load7P, req.body.Load8P, req.body.Load9P, req.body.Load10P, req.body.Load11P, req.body.Load12P, req.body.Load13P, req.body.Load14P,
       req.body.Load15P, req.body.Load16P, req.body.Load17P, req.body.Load18P,req.body.Load19P,req.body.Load20P, req.body.ClientID], function (error, results, fields) {
	  if (error) throw error;
	  res.end(JSON.stringify(results));
	});
});

//rest api to delete record from mysql database
app.delete('/client', function (req, res) {
   console.log(req.body);
   connection.query('DELETE FROM  `MQTTClientData` WHERE `ClientID`=?', [req.body.ClientID], function (error, results, fields) {
	  if (error) throw error;
	  res.end('Record has been deleted!');
	});
});
