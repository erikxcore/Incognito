//
//  SceneDecider.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DatabaseUtility.h"
#import "SceneModel.h"
#import "ChoiceModel.h"
#import "SceneDrawer.h"

@interface SceneDecider : NSObject

@property (nonatomic, retain) SceneDrawer *sceneDrawer;

-(void)startNewGame;
-(void)resumeGame:(int)sceneID;
-(void)checkForSaveGame;

-(void)testScenes;

-(void)moveToScene:(int)sceneID;

/*Use the DB class for this...
-(BOOL)isEnding:(int)endingID;
-(BOOL)isMinigame:(int)minigameID;
-(BOOL)isQTE:(int)sceneID;
*/

-(void)moveToMinigame:(int)minigameID;
-(void)moveToQTEScene:(int)sceneID;

@end
