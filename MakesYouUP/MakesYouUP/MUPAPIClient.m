//
//  MUPAPIClient.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 31/01/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "MUPAPIClient.h"
#import "MUPSocialFeed.h"

#import "AFJSONRequestOperation.h"

static NSString * const kMUPAPIBaseURLString = @"https://jawbone.com/";

@implementation MUPAPIClient

+ (MUPAPIClient*)sharedClient {
    static MUPAPIClient *_shareClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareClient = [[MUPAPIClient alloc] initWithBaseURL:[NSURL URLWithString:kMUPAPIBaseURLString]];
    });
    
    return _shareClient;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    
    [self setDefaultHeader:@"Accept" value:@"application/json"];
    
    return self;
}

//- (void)requestUPWithPath:(NSString *)path
//               parameters:(NSDictionary *)parameters
//                 response:(void (^)(NSArray *socialFeeds))success
//                  failure:(void (^)(NSError *error))failure {
//    
//    [super getPath:path
//        parameters:parameters
//           success:^(AFHTTPRequestOperation *operation, id responseObject) {
//               
//               NSArray *feeds = [[responseObject valueForKey:@"data"] valueForKey:@"feed"];
//               NSMutableArray *socialFeeds = [[NSMutableArray alloc] initWithCapacity:feeds.count];
//               
//               NSLog(@"ResponseObject:%@", feeds);
//               
//               dispatch_queue_t feedsCreationQueue = dispatch_queue_create("com.mup.feedcreation", NULL);
//               
//               dispatch_async(feedsCreationQueue, ^{
//                   
//                   for (NSDictionary *feed in feeds) {
//                       SocialFeed *socialFeed = [[SocialFeed alloc] initWithFeedAttributes:feed];
//                       [socialFeeds addObject:socialFeed];
//                   }
//                   success(socialFeeds);
//                   
//               });
//               
//           }
//           failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//               failure(error);
//           }];
//}

@end
