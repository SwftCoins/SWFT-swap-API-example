  // 查询货币清单接口
   var client = new RestClient("https://{host}/api/v1/queryCoinList");
  var request = new RestRequest(Method.POST);
  request.AddHeader("cache-control", "no-cache");
  request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
  request.AddParameter("undefined", "supportType=advanced&undefined=", ParameterType.RequestBody);
  IRestResponse response = client.Execute(request);
  
  
  
  //获取兑换汇率基本信息接口
    var client = new RestClient("${host}/api/v1/getBaseInfo");
  var request = new RestRequest(Method.POST);
  request.AddHeader("cache-control", "no-cache");
  request.AddHeader("Content-Type", "application/json");
  request.AddParameter("undefined", "{\"depositCoinCode\":\"BTC\",\"receiveCoinCode\":\"ETH\"}", ParameterType.RequestBody);
  IRestResponse response = client.Execute(request);
  
  
  
  //创建订单
    var client = new RestClient("${host}/api/v2/accountExchange");
  var request = new RestRequest(Method.POST);
  request.AddHeader("cache-control", "no-cache");
  request.AddHeader("Content-Type", "application/json");
  request.AddParameter("undefined", "{\"equipmentNo\":\"352943090468518\",\"sessionUuid\":\"\",\"sourceType\":\"ANDROID\",\"userNo\":\"\",\"orderId\":\"de752da3-0ff7-4682-8038-d8e1f20cad95\",\"depositCoinCode\":\"BTC\",\"receiveCoinCode\":\"ETH\",\"depositCoinAmt\":\"0.01\",\"receiveCoinAmt\":\"0.336585\",\"receiveSwftAmt\":\"18.06\",\"destinationAddr\":\"0x364397e2fc9929f11ba0c03826ef282dd64a829f\",\"refundAddr\":\"18orDLFMp3fGoy5Uk93LDGTGbxWEm7b7FY\",\"sourceFlag\":\"LendChain\",\"developerId\":\"\"}", ParameterType.RequestBody);
  IRestResponse response = client.Execute(request);
  
  
  
  //查询订单状态
   var client = new RestClient("https://{host}/api/v2/queryOrderState");
  var request = new RestRequest(Method.POST);
  request.AddHeader("cache-control", "no-cache");
  request.AddHeader("Content-Type", "application/json");
  request.AddParameter("undefined", "{\n    \"equipmentNo\": \"Zasdf352943090468518\",\n   \n    \"sourceType\": \"ANDROID\",\n\n    \"orderId\": \"de752da3-0ff7-4682-8038-d8e1f20cad95\"\n}", ParameterType.RequestBody);
  IRestResponse response = client.Execute(request);
  
  
 