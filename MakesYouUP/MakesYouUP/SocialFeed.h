//
//  SocialFeed.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 07/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

/*  API Response:
    API: https://jawbone.com/nudge/api/users/@me/social
 {
                "activity_xid" = "kFPxCrv15kOQtif2yOS-Mw";
                "app_generated" = 0;
                awake = 3512;
                comments =                 (
                );
                duration = 9212;
                emotions =                 (
                );
                image = "/mod/sleep_340x104/nudge/api/sleeps/BXM3Lg0tIY1J1uCTtaTGdQ/image";
                "is_private" = 0;
                networks =                 (
                );
                quality = 15;
                "reached_goal" = 0;
                subtitle = "Abdul Huq's sleep quality was 15";
                "time_created" = 1360138995;
                "time_updated" = 1360138995;
                title = "Napped for 1:35";
                type = sleep;
                tz = "Asia/Riyadh";
                user =                 {
                    first = "Abdul Huq";
                    image = "user/image/i/50fb543338c04b41fed65f84_RGaCBFg9CsD1npR8QOT1UQ_135864837163_2904743_photo.jpeg";
                    last = Mohammed;
                    name = "Abdul Huq Mohammed";
                    "short_name" = "Abdul Huq";
                    type = user;
                    xid = RGaCBFg9CsD1npR8QOT1UQ;
                };
                xid = BXM3Lg0tIY1J1uCTtaTGdQ;
            },
 
 */

#import <Foundation/Foundation.h>
#import "User.h"

@interface SocialFeed : NSObject

@property (strong, readonly) NSString *activity_xid;
@property (strong, readonly) NSString *app_generated;
@property (strong, readonly) NSString *awake;
@property (strong, readonly) NSArray  *comments; //Array for <SocialComment> 
@property (strong, readonly) NSString *duration;
@property (strong, readonly) NSArray  *emotions; //Array for <Emotions>
@property (strong, readonly) NSString *image;
@property (strong, readonly) NSString *is_private;
@property (strong, readonly) NSArray  *networks; //Array for <Networks>, maybe; Currently it returns nothing.
@property (strong, readonly) NSString *quality;
@property (strong, readonly) NSString *reached_goal;
@property (strong, readonly) NSString *subtitle;
@property (strong, readonly) NSString *time_created;
@property (strong, readonly) NSString *time_updated;
@property (strong, readonly) NSString *title;
@property (strong, readonly) NSString *type;
@property (strong, readonly) NSString *tz;        //TimeZone
@property (strong, readonly) User     *user;
@property (strong, readonly) NSString *xid;

- (id)initWithFeedAttributes:(NSDictionary *)dict;

@end
