//
//  SceneDrawer.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SceneModel.h"
#import "Scene.h"
#import "ChoiceModel.h"

@interface SceneDrawer : NSObject

@property (nonatomic, retain) SceneModel *sceneInformation;
@property (nonatomic, retain) Scene *theScene;

-(void)drawScene:(int)sceneID;

@end
