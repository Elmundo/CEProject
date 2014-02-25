//
//  CRenderEvent.h
//  ChaosGame
//
//  Created by Baris YILMAZ on 1/22/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CEvent.h"

@interface CRenderEvent : CEvent

@property (nonatomic, strong) id atlas;
@property (nonatomic, strong) id sprite;

+ (id)eventWithType:(NSString *)type withObject:(id)object withAtlas:(id)atlas withSprite:(id)sprite withBubbles:(BOOL)bubbles;
- (id)initWithType:(NSString *)type withObject:(id)object withAtlas:(id)atlas withSprite:(id)sprite withBubbles:(BOOL)bubbles;

/* Event Static Messages */
+ (NSString *)CE_SpriteReady;

@end
