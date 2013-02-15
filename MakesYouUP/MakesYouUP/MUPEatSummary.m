//
//  EatSummary.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "MUPEatSummary.h"
#import "MUPMeal.h"

@implementation MUPEatSummary

- (id)initWithEatSummaryAttributes:(NSDictionary *)dict; {
    self = [super init];
    if (self) {
        
        NSArray *meals = [dict valueForKey:@"meals"];
        NSMutableArray *mealsObjects = [[NSMutableArray alloc] initWithCapacity:[meals count]];
        for (NSDictionary *meal in meals) {
            [mealsObjects addObject:[[MUPMeal alloc] initWithMealAttributes:meal]];
        }
        
        _meals = mealsObjects;
    }
    return self;
}

@end
