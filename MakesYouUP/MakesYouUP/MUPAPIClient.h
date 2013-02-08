//
//  MUPAPIClient.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 31/01/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "AFHTTPClient.h"

@interface MUPAPIClient : AFHTTPClient

+ (MUPAPIClient*)sharedClient;

//- (void)requestUPWithPath:(NSString *)path
//               parameters:(NSDictionary *)parameters
//                 response:(void (^)(NSArray *socialFeeds))success
//                  failure:(void (^)(NSError *error))failure;

@end
