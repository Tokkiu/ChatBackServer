/// <reference path="../typings/node/node.d.ts" />
var express = require('express');
var router = express.Router();
var http = require('http');
var parser = require('xml2json');
var url = require('url');

/* GET xmlparser listing. */
router.get('/', function(req, res, next) {
  res.setHeader("Access-Control-Allow-Origin", "*");
    var query=req.query.que;
    var region=req.query.reg;
    var xmltext = '';
    var options=url.parse('http://api.map.baidu.com/place/v2/search?query='+encodeURI(query)+'&page_size=10&page_num=0&scope=1&region='+encodeURI(region)+'&output=xml&ak=1LdQlr84NHi4QiNUeCUaiaqE')
    options.method='get';
    console.log(options);
    var xmlreq = http.request(options,(response)=>{
        console.log('STATUS'+response.statusCode);
        response.on('data',(chunk)=>{
            xmltext += chunk;
        });
        response.on('end',()=>{
            //console.log(parser.toJson(xmltext));
            //console.log(xmltext);
            res.setHeader('Content-Type','Text/xml');

            //展示xml
            //自定义xsl样式展示
           xmltext = xmltext.slice(40);
             xmltext = '<?xml version="1.0" encoding="ISO-8859-1"?>\n<?xml-stylesheet type="text/xsl" href="cdcatalog.xsl"?>\n' + xmltext;
             res.send(xmltext);


            //展示json
            //res.send(parser.toJson(xmltext));


            //console.log(xmltext);
            console.log('Data End');

        });
    });
    xmlreq.end();
    // res.send('respond with a resource');
});

module.exports = router;
