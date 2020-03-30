  // 查询货币清单接口
  OkHttpClient client = new OkHttpClient();
  ​
  MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
  RequestBody body = RequestBody.create(mediaType, "supportType=advanced");
  Request request = new Request.Builder()
    .url("https://{host}/api/v1/queryCoinList")
    .post(body)
    .addHeader("Content-Type", "application/x-www-form-urlencoded")
    .addHeader("cache-control", "no-cache")
    .build();
  ​
  Response response = client.newCall(request).execute();
  
  
  
  //获取兑换汇率基本信息接口
  OkHttpClient client = new OkHttpClient();
  ​
  MediaType mediaType = MediaType.parse("application/json");
  RequestBody body = RequestBody.create(mediaType, "{\"depositCoinCode\":\"BTC\",\"receiveCoinCode\":\"ETH\"}");
  Request request = new Request.Builder()
    .url("https://{host}/api/v1/getBaseInfo")
    .post(body)
    .addHeader("Content-Type", "application/json")
    .addHeader("cache-control", "no-cache")
    .build();
  ​
  Response response = client.newCall(request).execute();
  
  
  
  //创建订单
  OkHttpClient client = new OkHttpClient();
  ​
  MediaType mediaType = MediaType.parse("application/json");
  RequestBody body = RequestBody.create(mediaType, "{\"equipmentNo\":\"Zsda352943090468518\",\"sessionUuid\":\"\",\"sourceType\":\"ANDROID\",\"userNo\":\"\",\"orderId\":\"de752da3-0ff7-4682-8038-d8e1f20cad95\",\"depositCoinCode\":\"BTC\",\"receiveCoinCode\":\"ETH\",\"depositCoinAmt\":\"0.01\",\"receiveCoinAmt\":\"0.336585\",\"receiveSwftAmt\":\"18.06\",\"destinationAddr\":\"0x364397e2fc9929f11ba0c03826ef282dd64a829f\",\"refundAddr\":\"18orDLFMp3fGoy5Uk93LDGTGbxWEm7b7FY\",\"sourceFlag\":\"LendChain\",\"developerId\":\"\"}");
  Request request = new Request.Builder()
    .url("https://{host}/api/v2/accountExchange")
    .post(body)
    .addHeader("Content-Type", "application/json")
    .addHeader("cache-control", "no-cache")
    .build();
  ​
  Response response = client.newCall(request).execute();
  
  
  
  //查询订单状态
  OkHttpClient client = new OkHttpClient();
  ​
  MediaType mediaType = MediaType.parse("application/json");
  RequestBody body = RequestBody.create(mediaType, "{\n    \"equipmentNo\": \"Zasdf352943090468518\",\n   \n    \"sourceType\": \"ANDROID\",\n\n    \"orderId\": \"de752da3-0ff7-4682-8038-d8e1f20cad95\"\n}");
  Request request = new Request.Builder()
    .url("https://{host}/api/v2/queryOrderState")
    .post(body)
    .addHeader("Content-Type", "application/json")
    .addHeader("cache-control", "no-cache")
    .build();
  ​
  Response response = client.newCall(request).execute();
  
  
  
  
  //批量获取兑换汇率基本信息接口
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n\t\"transactionPair\":\"SWFTCtoETH,SWFTCtoBTC\"\n}");
Request request = new Request.Builder()
  .url("https://{host}/api/v1/getInfo")
  .post(body)
  .addHeader("Content-Type", "application/json")
  .addHeader("cache-control", "no-cache")
  .addHeader("Postman-Token", "6a54ea69-afbd-4498-97e0-c41b471787be")
  .build();

Response response = client.newCall(request).execute();





//