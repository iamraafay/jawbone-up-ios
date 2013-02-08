//
//  User.m
//  MakesYouUP
//
//  Created by Mohammad Abdurraafay on 05/02/13.
//  Copyright (c) 2013 Mohammad Abdurraafay. All rights reserved.
//

#import "User.h"

@implementation User

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithAttributes:(NSDictionary *)attributes {
    
    _first = [attributes valueForKey:@"first"];
    _image = [attributes valueForKey:@"image"];
    _last = [attributes valueForKey:@"last"];
    _name = [attributes valueForKey:@"name"];
    _short_name = [attributes valueForKey:@"short_name"];
    _type = [attributes valueForKey:@"type"];
    _xid = [attributes valueForKey:@"xid"];
    
    return [self init];
}

@end
