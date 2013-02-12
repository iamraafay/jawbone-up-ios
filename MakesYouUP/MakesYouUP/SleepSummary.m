//
//  SleepSummary.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "SleepSummary.h"
#import "Sleep.h"

@implementation SleepSummary

- (id)initWithSleepSummaryAttributes:(NSDictionary *)dict {
    
    _deep = [dict valueForKey:@"deep"];
    _light = [dict valueForKey:@"light"];
    
    NSArray *sleepsArr = [dict valueForKey:@"sleeps"];
    NSMutableArray *sleepsObjects = [[NSMutableArray alloc] initWithCapacity:[sleepsArr count]];
    for (NSDictionary *sleep in sleepsArr) {
        [sleepsObjects addObject:[[Sleep alloc] initWithSleepAttributes:sleep]];
    }
    _sleeps = sleepsObjects;
    _total = [dict valueForKey:@"deep"];
    
    return [self init];
}

@end
