//
//  Meal.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 12/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
                {
                    date = 20130212;
                    details =                     {
                        accuracy = 65;
                        calcium = 20;
                        calories = 72;
                        carbohydrate = "11.98";
                        cholesterol = 0;
                        fat = 0;
                        fiber = "0.7";
                        iron = 0;
                        "monounsaturated_fat" = 0;
                        "num_drinks" = 0;
                        "num_food" = 1;
                        "polyunsaturated_fat" = 0;
                        potassium = 0;
                        protein = "2.12";
                        "saturated_fat" = "0.294";
                        sodium = 827;
                        sugar = "3.83";
                        tz = "Asia/Kolkata";
                        "unsaturated_fat" = "1.557";
                        "vitamin_a" = 0;
                        "vitamin_c" = 0;
                    };
                    note = "Vegetarian Vegetable Soup";
                    photo = "/user/image/i/4fcd2bd53018e70a570029bd_oEY1TrW3NY8_133884616565_6075100_image.jpg";
                    "place_lat" = "17.352894";
                    "place_lon" = "78.499325";
                    "place_name" = Home;
                    reaction = "<null>";
                    "sub_type" = 1;
                    "time_completed" = 1360643025;
                    "time_created" = 1360643025;
                    "time_updated" = 1360643105;
                    title = "Vegetarian Vegetable Soup";
                    type = 2;
                    user = "";
                    xid = "BXM3Lg0tIY3ZndQb8vWz_g";
                }
 */

@interface MUPMeal : NSObject

@property (nonatomic, readonly) NSString *date;
@property (nonatomic, readonly) NSDictionary *details;
@property (nonatomic, readonly) NSString *note;
@property (nonatomic, readonly) NSString *photo;
@property (nonatomic, readonly) NSString *place_lat;
@property (nonatomic, readonly) NSString *place_lon;
@property (nonatomic, readonly) NSString *place_name;
@property (nonatomic, readonly) NSString *reaction;
@property (nonatomic, readonly) NSString *sub_type;
@property (nonatomic, readonly) NSString *time_completed;
@property (nonatomic, readonly) NSString *time_created;
@property (nonatomic, readonly) NSString *time_updated;
@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) NSString *type;
@property (nonatomic, readonly) NSString *user;
@property (nonatomic, readonly) NSString *xid;

- (id)initWithMealAttributes:(NSDictionary *)dict;

@end
