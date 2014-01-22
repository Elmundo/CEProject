//
//  CPoint.h
//  ChaosGame
//
//  Created by Baris YILMAZ on 1/15/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPoint : NSObject

@property (nonatomic, assign) int x;
@property (nonatomic, assign) int y;

- (id)initWithX:(int)x and:(int)y;

- (id)initWithCGRect:(CGPoint)point;

- (CGPoint)CGPoint;

@end