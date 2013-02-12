//
//  DailySummary.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "DailySummary.h"
#import "EatSummary.h"
#import "SleepSummary.h"
#import "MoveSummary.h"

@implementation DailySummary

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithDailySummaryAttributes:(NSDictionary *)dict {
    
    _date            = [dict valueForKey:@"date"];
    _eat             = [dict valueForKey:@"eat"];
    _eat_goal        = [dict valueForKey:@"eat_goal"];
    _eat_percent     = [dict valueForKey:@"eat_percent"];
    _eat_summary     = [[EatSummary alloc] initWithEatSummaryAttributes:[dict valueForKey:@"eat_summary"]];
    _meal_photos     = [dict valueForKey:@"meal_photos"];
    _meal_xids       = [dict valueForKey:@"meal_xids"];
    _move            = [dict valueForKey:@"move"];
    _move_goal       = [dict valueForKey:@"move_goal"];
    _move_kilometers = [dict valueForKey:@"move_kilometers"];
    _move_percent    = [dict valueForKey:@"move_percent"];
    _move_seconds    = [dict valueForKey:@"move_seconds"];
    _move_steps      = [dict valueForKey:@"move_steps"];
    _move_summary    = [[MoveSummary alloc] initWithMoveSummaryAttributes:[dict valueForKey:@"move_summary"]];//
    _sleep           = [dict valueForKey:@"sleep"];
    _sleep_goal      = [dict valueForKey:@"sleep_goal"];
    _sleep_percent   = [dict valueForKey:@"sleep_percent"];
    _sleep_summary   = [[SleepSummary alloc] initWithSleepSummaryAttributes:[dict valueForKey:@"sleep_summary"]];
    _sleep_total     = [dict valueForKey:@"sleep_total"];
    _total           = [dict valueForKey:@"total"];
    _total_goal      = [dict valueForKey:@"total_goal"];
    
    return [self init];
}

@end
