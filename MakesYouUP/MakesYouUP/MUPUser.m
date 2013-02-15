//
//  User.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 05/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "MUPUser.h"

@implementation MUPUser

- (id)initWithAttributes:(NSDictionary *)attributes {
    self = [super init];
    if (self) {
        _first = [attributes valueForKey:@"first"];
        _image = [attributes valueForKey:@"image"];
        _last = [attributes valueForKey:@"last"];
        _name = [attributes valueForKey:@"name"];
        _short_name = [attributes valueForKey:@"short_name"];
        _type = [attributes valueForKey:@"type"];
        _xid = [attributes valueForKey:@"xid"];
    }
    return self;
}

@end
