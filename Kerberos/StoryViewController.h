//
//  StoryViewController.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scene.h"
#import "SceneModel.h"
#import "ChoiceModel.h"

@interface StoryViewController : UIViewController

@property (strong, nonatomic) Scene *sceneView;
@property (strong, nonatomic) ChoiceModel *choices;

@end
