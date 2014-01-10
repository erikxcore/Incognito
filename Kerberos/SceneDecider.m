//
//  SceneDecider.m
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import "SceneDecider.h"

@implementation SceneDecider

@synthesize sceneDrawer;

-(void)testScenes{
    NSArray *scenes = [DatabaseUtility database].scenes;
     for(SceneModel *scene in scenes){
     NSLog(@"%d: %@ %@", scene.sceneID, scene.sceneTitle, scene.sceneDescription );
     }
     
     NSArray *choices = [DatabaseUtility database].choices;
     for(ChoiceModel *choice in choices){
     NSLog(@"%d %d %d %d %d %d %d %@",choice.choiceID,choice.choiceForScene,choice.choiceNumber,choice.destinationSceneID,choice.choiceQuickTimeEventType,choice.choiceMinigameType,choice.choiceEnding,choice.choiceDescription);
     }
     NSLog(@"Attempting to get choices for first scene");
     NSArray *choicesForScene1 = [[DatabaseUtility database]choicesForScene:1 ];
     for(ChoiceModel *choice in choicesForScene1){
     NSLog(@"%d %d %d %d",choice.choiceID,choice.choiceForScene,choice.choiceNumber,choice.destinationSceneID);
     }
    
}

-(void)startNewGame{
    [self moveToScene:0];
}

-(void)moveToScene:(int)sceneID{
    BOOL endingCheck = [[DatabaseUtility database]isSceneEnding:sceneID];
    BOOL minigameCheck = [[DatabaseUtility database]isSceneMinigame:sceneID];
    BOOL qteCheck = [[DatabaseUtility database]isSceneQTE:sceneID];
    if(endingCheck == true){
    //do something
    }else if(minigameCheck == true){
    //do something
    }else if(qteCheck == true){
    //do something
    }else{
    [sceneDrawer drawScene:sceneID];

    }
}

-(void)resumeGame:(int)sceneID{}
-(void)checkForSaveGame{}

-(void)moveToMinigame:(int)minigameID{}
-(void)moveToQTEScene:(int)sceneID{}


@end
