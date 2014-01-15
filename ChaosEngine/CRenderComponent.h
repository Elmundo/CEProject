//
//  CRenderComponent.h
//  ChaosGame
//
//  Created by Baris YILMAZ on 1/13/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import "CComponent.h"
#import "CScene.h"
#import "CSceneManager.h"
#import "CPositionComponent.h"
#import "CPoint.h"

#import <SpriteKit/SpriteKit.h>

@interface CRenderComponent : CComponent

@property (nonatomic, weak) CSceneManager *manager;
@property (nonatomic, strong) NSNotificationCenter *notificationManager;

@property (nonatomic, strong) SKSpriteNode *spriteNode;
@property (nonatomic, strong) CScene *scene;
@property (nonatomic, assign) CPoint *position;

@property (nonatomic, strong) NSString *sceneName;
@property (nonatomic, strong) NSString *resourceName;

@property (nonatomic, strong) id positionRef;

@end
