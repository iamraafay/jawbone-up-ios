//
//  Sleep.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
                            {
                              date = 20130204;
                              details =                     {
                                  "asleep_time" = 1359942599;
                                  awake = 962;
                                  "awake_time" = 1359941638;
                                  awakenings = 0;
                                  body = 0;
                                  deep = 69;
                                  duration = 1031;
                                  light = 0;
                                  mind = 0;
                                  quality = 0;
                                  "smart_alarm_fire" = 0;
                                  tz = "Asia/Kolkata";
                              };
                              "sub_type" = 1;
                              "time_completed" = 1359942669;
                              "time_created" = 1359941638;
                              "time_updated" = 1360064432;
                              title = "Slept for 0:01";
                              type = 3;
                              "user_xid" = "";
                              xid = BXM3Lg0tIY069HgGQWRjDg;
                          }
 */

@interface Sleep : NSObject

@property (nonatomic, readonly) NSString *date;
@property (nonatomic, readonly) NSDictionary *details; //Dictionary of Sleep.
@property (nonatomic, readonly) NSString *sub_type;
@property (nonatomic, readonly) NSString *time_completed;
@property (nonatomic, readonly) NSString *time_created;
@property (nonatomic, readonly) NSString *time_updated;
@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) NSString *type;
@property (nonatomic, readonly) NSString *user_xid;
@property (nonatomic, readonly) NSString *xid;

- (id)initWithSleepAttributes:(NSDictionary *)dict;

@end
