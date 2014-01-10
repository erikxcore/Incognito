//
//  DatabaseUtility.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DatabaseUtility : NSObject{
    sqlite3 *_database;
}

+ (DatabaseUtility*)database;

-(NSArray *)scenes;
-(NSArray *)choices;
-(NSArray *)choicesForScene:(int)sceneID;
-(NSArray *)sceneByID:(int)sceneID;

//Wip below
-(BOOL)doesSaveExist:(int)sceneID;
-(void)saveGameAt:(int) sceneID;
-(BOOL)isSceneQTE:(int)sceneID;
-(BOOL)isSceneEnding:(int)sceneID;
-(BOOL)isSceneMinigame:(int)sceneID;

@end
