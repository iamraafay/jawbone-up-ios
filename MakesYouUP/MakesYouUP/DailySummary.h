//
//  DailySummary.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EatSummary.h"
#import "MoveSummary.h"
#import "SleepSummary.h"

/*
{
    data =     {
        date = "2013-02-12";
        eat = 50;
        "eat_goal" = 200;
        "eat_percent" = 25;
        "eat_summary" =         {
            meals =             (
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
                },
                                {
                    date = 20130212;
                    details =                     {
                        accuracy = 10;
                        calcium = 20;
                        calories = 90;
                        carbohydrate = 22;
                        cholesterol = 0;
                        fat = 0;
                        fiber = 1;
                        iron = 0;
                        "monounsaturated_fat" = 0;
                        "num_drinks" = 0;
                        "num_food" = 1;
                        "polyunsaturated_fat" = 0;
                        potassium = 0;
                        protein = 2;
                        "saturated_fat" = 0;
                        sodium = 197;
                        sugar = 2;
                        tz = "Asia/Kolkata";
                        "unsaturated_fat" = 0;
                        "vitamin_a" = 0;
                        "vitamin_c" = 0;
                    };
                    note = "Corn Flakes";
                    photo = "/user/image/i/5119c3bcdfc337534a4f85f9_RGaCBFg9CsAEoe5uSfYlDw_136064300413_1109499_photo.jpeg";
                    "place_lat" = "17.352932";
                    "place_lon" = "78.49935";
                    "place_name" = Home;
                    reaction = "<null>";
                    "sub_type" = 1;
                    "time_completed" = 1360642949;
                    "time_created" = 1360642949;
                    "time_updated" = 1360643004;
                    title = "Corn Flakes";
                    type = 2;
                    user = "";
                    xid = BXM3Lg0tIY0Z3fK5cOJsKQ;
                }
            );
        };
        "meal_photos" =         (
            "/user/image/i/5119c3bcdfc337534a4f85f9_RGaCBFg9CsAEoe5uSfYlDw_136064300413_1109499_photo.jpeg"
        );
        "meal_xids" =         (
            "BXM3Lg0tIY3ZndQb8vWz_g",
            BXM3Lg0tIY0Z3fK5cOJsKQ
        );
        move = 4385;
        "move_goal" = 3500;
        "move_kilometers" = "2.882";
        "move_percent" = 125;
        "move_seconds" = 2374;
        "move_steps" = 4385;
        "move_summary" =         {
            "move_calories" = "182.913998701";
            "move_kilometers" = "2.882";
            "move_seconds" = 2374;
            "move_steps" = 4385;
            workouts =             (
            );
        };
        sleep = 23190;
        "sleep_goal" = 21600;
        "sleep_percent" = 107;
        "sleep_summary" =         {
            deep = 9397;
            light = 13793;
            sleeps =             (
                                {
                    date = 20130212;
                    details =                     {
                        "asleep_time" = 1360607638;
                        awake = 3633;
                        "awake_time" = 1360633957;
                        awakenings = 5;
                        body = 0;
                        deep = 9397;
                        duration = 26823;
                        light = 13793;
                        mind = 0;
                        quality = 72;
                        "smart_alarm_fire" = 1360624860;
                        tz = "Asia/Kolkata";
                    };
                    "sub_type" = 0;
                    "time_completed" = 1360634080;
                    "time_created" = 1360607257;
                    "time_updated" = 1360643310;
                    title = "Slept for 6:26";
                    type = 3;
                    "user_xid" = "";
                    xid = BXM3Lg0tIY0ybg4PjuGP2g;
                }
            );
            total = 23190;
        };
        "sleep_total" = 23190;
        total = 27625;
        "total_goal" = 25300;
    };
    meta =     {
        code = 200;
        message = OK;
        time = 1360661802;
        "user_xid" = RGaCBFg9CsAEoe5uSfYlDw;
    };
}
 */

@interface DailySummary : NSObject

@property (nonatomic, readonly) NSString *date;
@property (nonatomic, readonly) NSString *eat;
@property (nonatomic, readonly) NSString *eat_goal;
@property (nonatomic, readonly) NSString *eat_percent;
@property (nonatomic, readonly) EatSummary *eat_summary;
@property (nonatomic, readonly) NSArray *meal_photos;
@property (nonatomic, readonly) NSArray  *meal_xids;
@property (nonatomic, readonly) NSString *move;
@property (nonatomic, readonly) NSString *move_goal;
@property (nonatomic, readonly) NSString *move_kilometers;
@property (nonatomic, readonly) NSString *move_percent;
@property (nonatomic, readonly) NSString *move_seconds;
@property (nonatomic, readonly) NSString *move_steps;
@property (nonatomic, readonly) MoveSummary *move_summary;
@property (nonatomic, readonly) NSString *sleep;
@property (nonatomic, readonly) NSString *sleep_goal;
@property (nonatomic, readonly) NSString *sleep_percent;
@property (nonatomic, readonly) SleepSummary *sleep_summary;
@property (nonatomic, readonly) NSString *sleep_total;
@property (nonatomic, readonly) NSString *total;
@property (nonatomic, readonly) NSString *total_goal;

- (id)initWithDailySummaryAttributes:(NSDictionary *)dict;

@end
