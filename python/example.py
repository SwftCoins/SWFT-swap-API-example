  
  //批量获取兑换汇率基本信息接口
  import http.client

conn = http.client.HTTPConnection("{host}")

payload = "{\n\t\"transactionPair\":\"SWFTCtoETH,SWFTCtoBTC\"\n}"

headers = {
    'Content-Type': "application/json",
    'cache-control': "no-cache",
    'Postman-Token': "ba52a67c-021e-4b95-ac3e-a4cea0dd752e"
    }

conn.request("POST", "api,v1,getInfo", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))



