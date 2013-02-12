//
//  MUPAPITest.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 04/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "MakesYouUP.h"

#import "SocialFeed.h"
#import "DailySummary.h"

@interface MUPAPITest : GHAsyncTestCase

@end

static NSInteger const kTimeOut = 15.0;
static NSString * const kMUPOwnerID = @"@me";

@implementation MUPAPITest

- (void)testSignIn {
    [super prepare];
    
    [MakesYouUP signWithUsername:@"me@mymail.com"
                     andPassword:@"mypass"
                        response:^(AFHTTPRequestOperation *operation, id responseObject) {
                            
                            NSLog(@"Response For Signin:%@", responseObject);
                            
                            [self notify:kGHUnitWaitStatusSuccess forSelector:@selector(testFeed)];
                            [self notify:kGHUnitWaitStatusSuccess forSelector:@selector(testUserDailySummary)];
                            [self notify:kGHUnitWaitStatusSuccess forSelector:@selector(testUserDetailedActivity)];
                            [self notify:kGHUnitWaitStatusSuccess forSelector:@selector(testSleepSummaryData)];
                            [self notify:kGHUnitWaitStatusSuccess forSelector:_cmd];
                            
                        }
                         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                             
                             NSLog(@"Error:%@", error);
                             
                             [self notify:kGHUnitWaitStatusFailure forSelector:_cmd];
                         }];
    
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:kTimeOut];
    
}

- (void)testTheUserFeed {
    
    //TODO: testing for the feeds tab!
    [super prepare];
    
    [MakesYouUP feedForTheUser:kMUPOwnerID
             withNumberOfFeeds:@"10"
                      response:^(NSArray *socialFeeds) {
                          NSLog(@"socialFeeds:%@", socialFeeds);
                          
                          int i = 1;
                          for (SocialFeed *socialFeed in socialFeeds) {
                              NSLog(@"\n SocialFeed %d - \n \
                                    1. activity_xid:%@ \n \
                                    2. appGenerate:%@ \n \
                                    3.awake:%@ \n \
                                    4. comments:%@ \n \
                                    5. duration:%@ \n \
                                    6. emotions:%@ \n \
                                    7. image:%@ \n \
                                    8. is_private:%@ \n \
                                    9. networks:%@ \n \
                                    10. quality:%@ \n \
                                    11. reached_goal:%@ \n \
                                    12. subtitle:%@ \n \
                                    13. time_created:%@ \n \
                                    14. time_updated:%@ \n \
                                    15. title:%@ \n \
                                    16. type:%@ \n \
                                    17. tz:%@ \n \
                                    18. user - \n \
                                            first:%@, \n \
                                            name:%@, \n \
                                            last:%@, \n \
                                            image:%@,\n \
                                            shortName:%@, \n \
                                            type:%@, \n \
                                            xid:%@\n \
                                    19. xid:%@", i,
                                    socialFeed.activity_xid,
                                    socialFeed.app_generated,
                                    socialFeed.awake,
                                    socialFeed.comments,
                                    socialFeed.duration,
                                    socialFeed.emotions,
                                    socialFeed.image,
                                    socialFeed.is_private,
                                    socialFeed.networks,
                                    socialFeed.quality,
                                    socialFeed.reached_goal,
                                    socialFeed.subtitle,
                                    socialFeed.time_created,
                                    socialFeed.time_updated,
                                    socialFeed.title,
                                    socialFeed.type,
                                    socialFeed.tz,
                                    socialFeed.user.first,
                                    socialFeed.user.name,
                                    socialFeed.user.last,
                                    socialFeed.user.image,
                                    socialFeed.user.short_name,
                                    socialFeed.user.type,
                                    socialFeed.user.xid,
                                    socialFeed.xid);
                              
                              i++;
                              
                          }
                          
                          [self notify:kGHUnitWaitStatusSuccess forSelector:_cmd];
                      }
                       failure:^(NSError *error) {
                           NSLog(@"Error:%@", error);
                           
                           [self notify:kGHUnitWaitStatusFailure forSelector:_cmd];
                       }];
    
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:kTimeOut];
}

- (void)testUserDailySummary {
    [super prepare];
    
    
    [MakesYouUP dailySummaryForDate:@"2013-2-12"
                            forUser:kMUPOwnerID
                           response:^(DailySummary *dailySummary) {
                               
                               NSLog(@"DailySummary =    \n \
                                     Date:%@             \n \
                                     Eat:%@              \n \
                                     Eat Goal:%@         \n \
                                     Eat Percentage: %@  \n \
                                     Eat Summary: %@     \n \
                                     Meal Photos:%@      \n \
                                     Meal XID:%@         \n \
                                     Move: %@            \n \
                                     move_goal: %@       \n \
                                     move_kilometers: %@ \n \
                                     move_percent: %@    \n \
                                     move_seconds: %@    \n \
                                     move_steps: %@      \n \
                                     move_summary: %@    \n \
                                        move_calaries:%@ \n \
                                        move_kilo:%@     \n \
                                        move_second:%@   \n \
                                        move_step:%@     \n \
                                        workout:%@       \n \
                                     sleep: %@           \n \
                                     sleep_goal:%@       \n \
                                     sleep_percent: %@   \n \
                                     sleep_summary: %@   \n \
                                        deep: %@         \n \
                                        light:%@         \n \
                                        sleeps:%@        \n \
                                        total:%@         \n \
                                     sleep_total: %@     \n \
                                     total: %@           \n \
                                     total_goal:%@       \n \
                                     ",
                                     dailySummary.date,
                                     dailySummary.eat,
                                     dailySummary.eat_goal,
                                     dailySummary.eat_percent,
                                     dailySummary.eat_summary.meals,
                                     dailySummary.meal_photos,
                                     dailySummary.meal_xids,
                                     dailySummary.move,
                                     dailySummary.move_goal,
                                     dailySummary.move_kilometers,
                                     dailySummary.move_percent,
                                     dailySummary.move_seconds,
                                     dailySummary.move_steps,
                                     dailySummary.move_summary,
                                     dailySummary.move_summary.move_calories,
                                     dailySummary.move_summary.move_kilometers,
                                     dailySummary.move_summary.move_seconds,
                                     dailySummary.move_summary.move_steps,
                                     dailySummary.move_summary.workouts,
                                     dailySummary.sleep,
                                     dailySummary.sleep_goal,
                                     dailySummary.sleep_percent,
                                     dailySummary.sleep_summary,
                                     dailySummary.sleep_summary.deep,
                                     dailySummary.sleep_summary.light,
                                     dailySummary.sleep_summary.sleeps,
                                     dailySummary.sleep_summary.total,
                                     dailySummary.sleep_total,
                                     dailySummary.total,
                                     dailySummary.total_goal);
                               
                               
                               NSLog(@"daily summery:%@", dailySummary);
                               [self notify:kGHUnitWaitStatusSuccess forSelector:_cmd];
                               
                           }
                            failure:^(NSError *error) {
                                [self notify:kGHUnitWaitStatusFailure forSelector:_cmd];
                            }];
    
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:kTimeOut];
}

- (void)testUserDetailedActivity {
     
    [super prepare];
    
    NSDate *today = [NSDate date];
    NSDate *yesterday = [today dateByAddingTimeInterval:-86400.0];
    NSDate *yesterdayOfYesterday = [yesterday dateByAddingTimeInterval:-86400.0];
    
    [MakesYouUP detailedUserActivityDataForUser:kMUPOwnerID
                                  fromStartDate:yesterdayOfYesterday
                                    tillEndDate:yesterday
                                       response:^(AFHTTPRequestOperation *operation, id responseObject) {
                                           [self notify:kGHUnitWaitStatusSuccess forSelector:_cmd];
                                       }
                                        failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                            [self notify:kGHUnitWaitStatusFailure forSelector:_cmd];
                                        }];
    
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:kTimeOut];
}

- (void)testSleepSummaryData {
    
    [super prepare];
    
    NSDate *today = [NSDate date];
    NSDate *yesterday = [today dateByAddingTimeInterval:-86400.0];
    NSDate *yesterdayOfYesterday = [yesterday dateByAddingTimeInterval:-86400.0];
    
    [MakesYouUP sleepSummaryDataForUser:kMUPOwnerID
                          fromStartDate:yesterdayOfYesterday
                            tillEndDate:yesterday
                               response:^(AFHTTPRequestOperation *operation, id responseObject) {
                                   [self notify:kGHUnitWaitStatusSuccess forSelector:_cmd];
                               }
                                failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                    [self notify:kGHUnitWaitStatusFailure forSelector:_cmd];
                                }];
    
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:kTimeOut];
}

- (void)testWorkOutsData {
    
    [super prepare];
    
    NSDate *today = [NSDate date];
    NSDate *yesterday = [today dateByAddingTimeInterval:-86400.0];
    NSDate *yesterdayOfYesterday = [yesterday dateByAddingTimeInterval:-86400.0];
    
    
    [MakesYouUP workOutSummaryDataForUser:kMUPOwnerID
                            fromStartDate:yesterdayOfYesterday
                              tillEndDate:yesterday
                                withLimit:@"10"
                                 response:^(AFHTTPRequestOperation *operation, id responseObject) {
                                     [self notify:kGHUnitWaitStatusSuccess forSelector:_cmd];
                                 }
                                  failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                      [self notify:kGHUnitWaitStatusFailure forSelector:_cmd];
                                  }];
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:kTimeOut];
}

@end
