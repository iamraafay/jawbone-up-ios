//
//  SleepSummary.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "MUPSleepSummary.h"
#import "MUPSleep.h"

@implementation MUPSleepSummary

- (id)initWithSleepSummaryAttributes:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        _deep = [dict valueForKey:@"deep"];
        _light = [dict valueForKey:@"light"];
        
        NSArray *sleepsArr = [dict valueForKey:@"sleeps"];
        NSMutableArray *sleepsObjects = [[NSMutableArray alloc] initWithCapacity:[sleepsArr count]];
        for (NSDictionary *sleep in sleepsArr) {
            [sleepsObjects addObject:[[MUPSleep alloc] initWithSleepAttributes:sleep]];
        }
        _sleeps = sleepsObjects;
        _total = [dict valueForKey:@"deep"];
    }
    return self;
}

@end
