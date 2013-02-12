//
//  MoveSummary.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "MoveSummary.h"

@implementation MoveSummary

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithMoveSummaryAttributes:(NSDictionary *)dict {
    
    _move_calories = [dict valueForKey:@"move_calories"];
    _move_kilometers = [dict valueForKey:@"move_kilometers"];
    _move_seconds = [dict valueForKey:@"move_seconds"];
    _move_steps = [dict valueForKey:@"move_steps"];
    _workouts = [dict valueForKey:@"workouts"];
    
    return [self init];
    
}

@end
