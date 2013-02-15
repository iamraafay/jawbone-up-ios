//
//  SocialFeed.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 07/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "MUPSocialFeed.h"

@implementation MUPSocialFeed

- (id)initWithFeedAttributes:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        _activity_xid   = [dict valueForKey:@"activity_xid"];
        _app_generated  = [dict valueForKey:@"app_generated"] ;
        _awake          = [dict valueForKey:@"awake"];
        _comments       = [dict valueForKey:@"comments"]; //Array for <SocialComment>
        _duration       = [dict valueForKey:@"duration"];
        _emotions       = [dict valueForKey:@"emotions"]; //Array for <Emotions>
        _image          = [dict valueForKey:@"image"];
        _is_private     = [dict valueForKey:@"is_private"];
        _networks       = [dict valueForKey:@"networks"]; //Array for <Networks>, maybe; Currently it returns nothing.
        _quality        = [dict valueForKey:@"quality"];
        _reached_goal   = [dict valueForKey:@"reached_goal"];
        _subtitle       = [dict valueForKey:@"subtitle"];
        _time_created   = [dict valueForKey:@"time_created"];
        _time_updated   = [dict valueForKey:@"time_updated"];
        _title          = [dict valueForKey:@"title"];
        _type           = [dict valueForKey:@"type"];
        _tz             = [dict valueForKey:@"tz"];        //TimeZone
        _user           = [[MUPUser alloc] initWithAttributes:[dict valueForKey:@"user"]];
        _xid            = [dict valueForKey:@"xid"];
    }
    return self;
}

@end
