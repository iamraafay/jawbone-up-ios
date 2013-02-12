//
//  MoveSummary.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
        "move_summary" =         {
            "move_calories" = "306.396999061";
            "move_kilometers" = "4.845";
            "move_seconds" = 3957;
            "move_steps" = 7372;
            workouts =             (
            );
        };
 */

@interface MoveSummary : NSObject

@property (nonatomic, readonly) NSString *move_calories;
@property (nonatomic, readonly) NSString *move_kilometers;
@property (nonatomic, readonly) NSString *move_seconds;
@property (nonatomic, readonly) NSString *move_steps;
@property (nonatomic, readonly) NSArray  *workouts; //Maybe, <Workout> Objects;

- (id)initWithMoveSummaryAttributes:(NSDictionary *)dict;

@end
