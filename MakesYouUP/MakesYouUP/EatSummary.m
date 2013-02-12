//
//  EatSummary.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "EatSummary.h"
#import "Meal.h"

@implementation EatSummary

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithEatSummaryAttributes:(NSDictionary *)dict; {
    
    NSArray *meals = [dict valueForKey:@"meals"];
    NSMutableArray *mealsObjects = [[NSMutableArray alloc] initWithCapacity:[meals count]];
    for (NSDictionary *meal in meals) {
        [mealsObjects addObject:[[Meal alloc] initWithMealAttributes:meal]];
    }
    
    _meals = mealsObjects;
    
    return [self init];
}

@end
