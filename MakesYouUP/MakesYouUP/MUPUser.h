//
//  User.h
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 05/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
user =                 {
        first = "Abdul Huq";
        image = "user/image/i/50fb543338c04b41fed65f84_RGaCBFg9CsD1npR8QOT1UQ_135864837163_2904743_photo.jpeg";
        last = Mohammed;
        name = "Abdul Huq Mohammed";
        "short_name" = "Abdul Huq";
        type = user;
        xid = RGaCBFg9CsD1npR8QOT1UQ;
    };
*/

@interface MUPUser : NSObject

@property (strong, readonly) NSString *first;
@property (strong, readonly) NSString *image;
@property (strong, readonly) NSString *last;
@property (strong, readonly) NSString *name;
@property (strong, readonly) NSString *short_name;
@property (strong, readonly) NSString *type;
@property (strong, readonly) NSString *xid;

- (id)initWithAttributes:(NSDictionary *)attributes;

@end
