//
//  CSceneManager.m
//  ChaosGame
//
//  Created by Baris YILMAZ on 1/14/14.
//  Copyright (c) 2014 Baris YILMAZ. All rights reserved.
//

#import "CSceneManager.h"

@implementation CSceneManager

+ (id)shared
{
    static CSceneManager *instance = nil;
    if (instance == nil) {
        instance = [[CSceneManager alloc] init];
    }
    
    return instance;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.sceneDic = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

- (CScene *)createSceneWithName:(NSString *)sceneName
{
    CScene *newScene = [[CScene alloc]
                        initWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    newScene.sceneName = sceneName;
    [self.sceneDic setObject:newScene forKey:sceneName];
    
    return newScene;
}

- (void)addScene:(CScene *)scene
{
    [self.sceneDic setObject:scene forKey:scene.sceneName];
}

- (CScene *)getSceneWithName:(NSString *)sceneName
{
    CScene *scene = [self.sceneDic objectForKey:sceneName];
    if (scene == nil) {
        NSLog(@"[CSceneManager: Error= There is no such a scene %@]", sceneName);
    }
    
    return scene;
}

- (NSDictionary *)getScenes
{
    return self.sceneDic;
}

@end
