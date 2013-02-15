//
//  MoveSummary.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "MUPMoveSummary.h"

@implementation MUPMoveSummary

- (id)initWithMoveSummaryAttributes:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        _move_calories = [dict valueForKey:@"move_calories"];
        _move_kilometers = [dict valueForKey:@"move_kilometers"];
        _move_seconds = [dict valueForKey:@"move_seconds"];
        _move_steps = [dict valueForKey:@"move_steps"];
        _workouts = [dict valueForKey:@"workouts"];
        
    }
    return self;
}

@end
