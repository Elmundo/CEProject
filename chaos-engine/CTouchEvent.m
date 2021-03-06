//
//  CTouchEvent.m
//  ChaosGame
//
//  Created by Baris YILMAZ on 4/21/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import "CTouchEvent.h"

@implementation CTouchEvent

+ (id)eventWithType:(NSString *)type
{
    CTouchEvent *event = [[CTouchEvent alloc] initWithType:type];
    return event;
}

- (id)initWithType:(NSString *)type
{
    self = [super initWithType:type];
    if (self) {
        
    }
    
    return self;
}

/* Event Static Messages */
+ (NSString*)ETouchBegan{ return @"TouchBeganEvent"; }
+ (NSString*)ETouchMoved{ return @"TouchMovedEvent"; }
+ (NSString*)ETouchEnded{ return @"TouchEndedEvent"; }
+ (NSString*)ETouchCancelled{ return @"TouchEndedCancelled"; }

@end
