//
//  CComponent.m
//  ChaosGame
//
//  Created by Baris YILMAZ on 1/13/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import "CComponent.h"
#import "CEntity.h"

@implementation CComponent

- (id)init
{
    self = [super init];
    if (self) {
        self.componentName = NSStringFromClass([self class]);
    }
    
    return self;
}

/* Override this method in subclass */
- (void)didAddedToEntity:(CEntity *)owner
{
    clog(@"['%@']['%@'] component is created", owner.name, self.componentName);
}

/* Override this method in subclass */
- (void)didRemovedFromEntity
{
    self.owner = nil;
    self.componentName = nil;
    [self.owner removeComponent:self];
}

- (CComponent *)getComponent:(NSString *)componentName
{
    return [self.owner getComponentWithName:componentName];
}

// Override this method
- (void)update:(NSTimeInterval)dt
{
    // Stuff
}

- (void)addEventListener:(SEL)action message:(NSString *)message
{
    [_owner.dispatcher addEventListener:self withAction:action withEvent:message];
}

- (void)addEventListener:(SEL)action message:(NSString *)message component:(CComponent *)component
{
    [_owner.dispatcher addEventListener:component withAction:action withEvent:message];
}

- (void)removeEventListener:(SEL)action message:(NSString *)message
{
    [_owner.dispatcher removeEventListener:self withAction:action withEvent:message];
}

- (void)removeEventListener:(SEL)action message:(NSString *)message component:(CComponent *)component
{
    [_owner.dispatcher removeEventListener:component withAction:action withEvent:message];
}

- (void)dispatchEventWithEvent:(CEvent *)event
{
    [_owner.dispatcher dispatchEvent:event];
}

@end
