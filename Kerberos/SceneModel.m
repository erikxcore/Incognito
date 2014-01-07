//
//  SceneModel.m
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import "SceneModel.h"

@implementation SceneModel

@synthesize sceneBackground = _sceneBackground;
@synthesize sceneBackgroundImage = _sceneBackgroundImage;
@synthesize sceneTitle = _sceneTitle;
@synthesize sceneID = _sceneID;
@synthesize sceneDescription = _sceneDescription;

-(id)initWithSceneId:(int)sceneID sceneTitle:(NSString *)sceneTitle sceneBackgroundImage:(UIImageView *)sceneBackgroundImage{
    if ((self = [super init])) {
        self.sceneID = sceneID;
        self.sceneTitle = sceneTitle;
        self.sceneBackgroundImage = sceneBackgroundImage;
        [self setBackgroundImage:sceneBackgroundImage];
    }
    return self;
}

-(id)initWithSceneId:(int) sceneID sceneTitle:(NSString *)sceneTitle sceneDescription:(NSString *)sceneDescription{
    if ((self = [super init])) {
        self.sceneID = sceneID;
        self.sceneTitle = sceneTitle;
        self.sceneDescription = sceneDescription;
    }
    return self;
}

- (void) setBackgroundImage :(UIView *)sceneBackgroundImage{
    [self.sceneBackground addSubview:sceneBackgroundImage];
}

-(void) dealloc{
    self.sceneBackgroundImage =nil;
    self.sceneTitle = nil;
    self.sceneBackground = nil;
}

@end
