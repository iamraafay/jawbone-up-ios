//
//  Sleep.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "Sleep.h"

@implementation Sleep

- (id)initWithSleepAttributes:(NSDictionary *)dict {
    
    _date = [dict valueForKey:@"date"];
    _details = [dict valueForKey:@"details"]; //Dictionary of Sleep.
    _sub_type = [dict valueForKey:@"sub_type"];
    _time_completed = [dict valueForKey:@"time_completed"];
    _time_created = [dict valueForKey:@"time_created"];
    _time_updated = [dict valueForKey:@"time_updated"];
    _title = [dict valueForKey:@"title"];
    _type = [dict valueForKey:@"type"];
    _user_xid = [dict valueForKey:@"user_xid"];
    _xid = [dict valueForKey:@"xid"];
    
    return [self init];
}

@end
