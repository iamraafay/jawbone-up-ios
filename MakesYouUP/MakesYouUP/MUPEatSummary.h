//
//  EatSummary.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

/*
         "eat_summary" =         {
            meals =             (
            );
        };
 */

#import <Foundation/Foundation.h>

@interface MUPEatSummary : NSObject

@property (nonatomic, readonly) NSArray *meals; //Maybe, <Meals> Objects..

- (id)initWithEatSummaryAttributes:(NSDictionary *)dict;

@end
