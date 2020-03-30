  // 查询货币清单接口
   #import <Foundation/Foundation.h>
  ​
  NSDictionary *headers = @{ @"Content-Type": @"application/x-www-form-urlencoded",
                             @"cache-control": @"no-cache" };
  ​
  NSMutableData *postData = [[NSMutableData alloc] initWithData:[@"supportType=advanced" dataUsingEncoding:NSUTF8StringEncoding]];
  [postData appendData:[@"&undefined=undefined" dataUsingEncoding:NSUTF8StringEncoding]];
  ​
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://{host}/api/v1/queryCoinList"]
                                                         cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                     timeoutInterval:10.0];
  [request setHTTPMethod:@"POST"];
  [request setAllHTTPHeaderFields:headers];
  [request setHTTPBody:postData];
  ​
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                              completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                  if (error) {
                                                      NSLog(@"%@", error);
                                                  } else {
                                                      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                      NSLog(@"%@", httpResponse);
                                                  }
                                              }];
  [dataTask resume];
  ​
  
  
  
  
  
  
  
  
  //获取兑换汇率基本信息接口
   #import <Foundation/Foundation.h>
  ​
  NSDictionary *headers = @{ @"Content-Type": @"application/json",
                             @"cache-control": @"no-cache" };
  NSDictionary *parameters = @{ @"depositCoinCode": @"BTC",
                                @"receiveCoinCode": @"ETH" };
  ​
  NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];
  ​
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://{host}/api/v1/getBaseInfo"]
                                                         cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                     timeoutInterval:10.0];
  [request setHTTPMethod:@"POST"];
  [request setAllHTTPHeaderFields:headers];
  [request setHTTPBody:postData];
  ​
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                              completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                  if (error) {
                                                      NSLog(@"%@", error);
                                                  } else {
                                                      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                      NSLog(@"%@", httpResponse);
                                                  }
                                              }];
  [dataTask resume];
  ​
  
  
  
  
  
  
  
  
  
  
  //创建订单
    #import <Foundation/Foundation.h>
  ​
  NSDictionary *headers = @{ @"Content-Type": @"application/json",
                             @"cache-control": @"no-cache" };
  NSDictionary *parameters = @{ @"equipmentNo": @"Zsda352943090468518",
                                @"sessionUuid": @"",
                                @"sourceType": @"ANDROID",
                                @"userNo": @"",
                                @"orderId": @"de752da3-0ff7-4682-8038-d8e1f20cad95",
                                @"depositCoinCode": @"BTC",
                                @"receiveCoinCode": @"ETH",
                                @"depositCoinAmt": @"0.01",
                                @"receiveCoinAmt": @"0.336585",
                                @"receiveSwftAmt": @"18.06",
                                @"destinationAddr": @"0x364397e2fc9929f11ba0c03826ef282dd64a829f",
                                @"refundAddr": @"18orDLFMp3fGoy5Uk93LDGTGbxWEm7b7FY",
                                @"sourceFlag": @"LendChain",
                                @"developerId": @"" };
  ​
  NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];
  ​
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://{host}/api/v2/accountExchange"]
                                                         cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                     timeoutInterval:10.0];
  [request setHTTPMethod:@"POST"];
  [request setAllHTTPHeaderFields:headers];
  [request setHTTPBody:postData];
  ​
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                              completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                  if (error) {
                                                      NSLog(@"%@", error);
                                                  } else {
                                                      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                      NSLog(@"%@", httpResponse);
                                                  }
                                              }];
  [dataTask resume];
  ​
  
  
  
  
  
  
  
  
  //查询订单状态
    #import <Foundation/Foundation.h>
  ​
  NSDictionary *headers = @{ @"Content-Type": @"application/json",
                             @"cache-control": @"no-cache" };
  NSDictionary *parameters = @{ @"equipmentNo": @"Zasdf352943090468518",
                                @"sourceType": @"ANDROID",
                                @"orderId": @"de752da3-0ff7-4682-8038-d8e1f20cad95" };
  ​
  NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];
  ​
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://{host}/api/v2/queryOrderState"]
                                                         cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                     timeoutInterval:10.0];
  [request setHTTPMethod:@"POST"];
  [request setAllHTTPHeaderFields:headers];
  [request setHTTPBody:postData];
  ​
  NSURLSession *session = [NSURLSession sharedSession];
  NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                              completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                  if (error) {
                                                      NSLog(@"%@", error);
                                                  } else {
                                                      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                      NSLog(@"%@", httpResponse);
                                                  }
                                              }];
  [dataTask resume];
  
  
  
  
  
  
