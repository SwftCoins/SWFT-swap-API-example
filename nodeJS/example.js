  // 查询货币清单接口
   var qs = require("querystring");
  var http = require("https");
  ​
  var options = {
    "method": "POST",
    "hostname": [
      "transfer",
      "swft",
      "pro"
    ],
    "path": [
      "api",
      "v1",
      "queryCoinList"
    ],
    "headers": {
      "Content-Type": "application/x-www-form-urlencoded",
      "cache-control": "no-cache"
    }
  };
  ​
  var req = http.request(options, function (res) {
    var chunks = [];
  ​
    res.on("data", function (chunk) {
      chunks.push(chunk);
    });
  ​
    res.on("end", function () {
      var body = Buffer.concat(chunks);
      console.log(body.toString());
    });
  });
  ​
  req.write(qs.stringify({ supportType: 'advanced', undefined: undefined }));
  req.end();
  
  
  
  
  
  
  
  //获取兑换汇率基本信息接口
   var http = require("https");
  ​
  var options = {
    "method": "POST",
    "hostname": [
      "transfer",
      "swft",
      "pro"
    ],
    "path": [
      "api",
      "v1",
      "getBaseInfo"
    ],
    "headers": {
      "Content-Type": "application/json",
      "cache-control": "no-cache"
    }
  };
  ​
  var req = http.request(options, function (res) {
    var chunks = [];
  ​
    res.on("data", function (chunk) {
      chunks.push(chunk);
    });
  ​
    res.on("end", function () {
      var body = Buffer.concat(chunks);
      console.log(body.toString());
    });
  });
  ​
  req.write(JSON.stringify({ depositCoinCode: 'BTC', receiveCoinCode: 'ETH' }));
  req.end();
  
  
  
  
  
  
  
  
  
  //创建订单
    var http = require("https");
  ​
  var options = {
    "method": "POST",
    "hostname": [
      "transfer",
      "swft",
      "pro"
    ],
    "path": [
      "api",
      "v2",
      "accountExchange"
    ],
    "headers": {
      "Content-Type": "application/json",
      "cache-control": "no-cache"
    }
  };
  ​
  var req = http.request(options, function (res) {
    var chunks = [];
  ​
    res.on("data", function (chunk) {
      chunks.push(chunk);
    });
  ​
    res.on("end", function () {
      var body = Buffer.concat(chunks);
      console.log(body.toString());
    });
  });
  ​
  req.write(JSON.stringify({ equipmentNo: 'Zsda3529430s90468518',
    sessionUuid: '',
    sourceType: 'ANDROID',
    userNo: '',
    orderId: 'de752da3-0ff7-4682-8038-d8e1f20cad95',
    depositCoinCode: 'BTC',
    receiveCoinCode: 'ETH',
    depositCoinAmt: '0.01',
    receiveCoinAmt: '0.336585',
    receiveSwftAmt: '18.06',
    destinationAddr: '0x364397e2fc9929f11ba0c03826ef282dd64a829f',
    refundAddr: '18orDLFMp3fGoy5Uk93LDGTGbxWEm7b7FY',
    sourceFlag: 'LendChain',
    developerId: '' }));
  req.end();
  
  
  
  
  
  
  
  //查询订单状态
   var http = require("https");
  ​
  var options = {
    "method": "POST",
    "hostname": [
      "transfer",
      "swft",
      "pro"
    ],
    "path": [
      "api",
      "v2",
      "queryOrderState"
    ],
    "headers": {
      "Content-Type": "application/json",
      "cache-control": "no-cache"
    }
  };
  ​
  var req = http.request(options, function (res) {
    var chunks = [];
  ​
    res.on("data", function (chunk) {
      chunks.push(chunk);
    });
  ​
    res.on("end", function () {
      var body = Buffer.concat(chunks);
      console.log(body.toString());
    });
  });
  ​
  req.write(JSON.stringify({ equipmentNo: 'Zasdf352943090468518',
    sourceType: 'ANDROID',
    orderId: 'de752da3-0ff7-4682-8038-d8e1f20cad95' }));
  req.end();
  
  
  
  
  
  
  
  
  //批量获取兑换汇率基本信息接口
  var http = require("https");

var options = {
  "method": "POST",
  "hostname": [
   {host}
  ],
  "path": [
    "api",
    "v1",
    "getInfo"
  ],
  "headers": {
    "Content-Type": "application/json",
    "cache-control": "no-cache",
    "Postman-Token": "6e81c9f4-d848-4d02-ada8-cff2f8990478"
  }
};

var req = http.request(options, function (res) {
  var chunks = [];

  res.on("data", function (chunk) {
    chunks.push(chunk);
  });

  res.on("end", function () {
    var body = Buffer.concat(chunks);
    console.log(body.toString());
  });
});

req.write(JSON.stringify({ transactionPair: 'SWFTCtoETH,SWFTCtoBTC' }));
req.end();






//