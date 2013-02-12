//
//  SleepSummary.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 11/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sleep.h"

/*
 "sleep_summary" =         {
            deep = 7149;
            light = 975;
            sleeps =             (
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
                                  },
                                  {
                                      date = 20130204;
                                      details =                     {
                                          "asleep_time" = 1359916559;
                                          awake = 892;
                                          "awake_time" = 1359924368;
                                          awakenings = 0;
                                          body = 0;
                                          deep = 7080;
                                          duration = 8947;
                                          light = 975;
                                          mind = 0;
                                          quality = 35;
                                          "smart_alarm_fire" = 0;
                                          tz = "Asia/Kolkata";
                                      };
                                      "sub_type" = 0;
                                      "time_completed" = 1359924615;
                                      "time_created" = 1359915668;
                                      "time_updated" = 1359924646;
                                      title = "Slept for 2:14";
                                      type = 3;
                                      "user_xid" = "";
                                      xid = BXM3Lg0tIY2MLNvVSAmTWQ;
                                  }
                                  );
            total = 8124;
        };
 */

@interface SleepSummary : NSObject

@property (nonatomic, readonly) NSString *deep;
@property (nonatomic, readonly) NSString *light;
@property (nonatomic, readonly) NSArray  *sleeps; //Array of <Sleeps>
@property (nonatomic, readonly) NSString *total;

- (id)initWithSleepSummaryAttributes:(NSDictionary *)dict;

@end
