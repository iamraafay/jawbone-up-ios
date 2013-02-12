//
//  Meal.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 12/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "Meal.h"

@implementation Meal

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithMealAttributes:(NSDictionary *)dict; {
    
    _date           = [dict valueForKey:@"date"];
    _details        = [dict valueForKey:@"details"];
    _note           = [dict valueForKey:@"note"];
    _photo          = [dict valueForKey:@"photo"];
    _place_lat      = [dict valueForKey:@"place_lat"];
    _place_lon      = [dict valueForKey:@"place_lon"];
    _place_name     = [dict valueForKey:@"place_name"];
    _reaction       = [dict valueForKey:@"reaction"];
    _sub_type       = [dict valueForKey:@"sub_type"];
    _time_completed = [dict valueForKey:@"time_completed"];
    _time_created   = [dict valueForKey:@"time_created"];
    _time_updated   = [dict valueForKey:@"time_updated"];
    _title          = [dict valueForKey:@"title"];
    _type           = [dict valueForKey:@"type"];
    _user           = [dict valueForKey:@"user"];
    _xid            = [dict valueForKey:@"xid"];
    
    return [self init];
    
}

@end
