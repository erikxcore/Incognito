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

-(void)getAllScenes;
-(void)getAllChoices;
-(void)findScene:(NSInteger) sceneID;
//Should return SceneModel
-(void)findChoices:(NSInteger) sceneID;
//Should return ChoiceModel
-(BOOL)doesSaveExist;
-(void)findSave;
-(void)saveGameAt:(NSInteger) sceneID;

@end
