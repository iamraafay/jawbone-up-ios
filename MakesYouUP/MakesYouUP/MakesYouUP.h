//
//  MakesYouUP.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 31/01/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MUPAPIClient.h"
@class DailySummary;
@interface MakesYouUP : NSObject

+ (void)signWithUsername:(NSString *)userName
             andPassword:(NSString *)password
                response:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                 failure:(void(^)(AFHTTPRequestOperation *operation, NSError *error))failure;


+ (void)feedForTheUser:(NSString *)user
     withNumberOfFeeds:(NSString *)limit
              response:(void (^)(NSArray *socialFeeds))success
               failure:(void (^)(NSError *error))failure;

+ (void)dailySummaryForDate:(NSString *)date
                    forUser:(NSString *)user
                   response:(void (^)(DailySummary *dailySummary))success
                    failure:(void (^)(NSError *error))failure;

+ (void)detailedUserActivityDataForUser:(NSString *)user
                          fromStartDate:(NSDate *)startDate
                            tillEndDate:(NSDate *)endDate
                               response:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                                failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

+ (void)sleepSummaryDataForUser:(NSString *)user
                  fromStartDate:(NSDate *)startDate
                    tillEndDate:(NSDate *)endDate
                       response:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success
                        failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

+ (void)workOutSummaryDataForUser:(NSString *)user
                    fromStartDate:(NSDate *)startDate
                      tillEndDate:(NSDate *)endDate
                        withLimit:(NSString *)limit
                         response:(void (^)(AFHTTPRequestOperation *, id))success
                          failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure;

@end
