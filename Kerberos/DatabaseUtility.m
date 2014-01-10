//
//  DatabaseUtility.m
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import "DatabaseUtility.h"
#import "SceneModel.h"
#import "ChoiceModel.h"

@implementation DatabaseUtility

static DatabaseUtility *_database;

+ (DatabaseUtility*)database{
    if (_database == nil) {
        _database = [[DatabaseUtility alloc] init];
    }
    return _database;
}

- (id)init {
    if ((self = [super init])) {
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"kerebos"ofType:@"db"];
            //NSLog(@"Opened DB");
        if (sqlite3_open([sqLiteDb UTF8String], &_database) != SQLITE_OK) {
            //NSLog(@"Failed to open database!");
        }
    }
    return self;
}

- (NSArray *)scenes{
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"SELECT id, title, description FROM SCENES";
    sqlite3_stmt *statement;
    //NSLog(@"Created query");
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int sceneID = sqlite3_column_int(statement,0);
            char *titleChars = (char *) sqlite3_column_text(statement,1);
            NSString *sceneTitle = [[NSString alloc]initWithUTF8String:titleChars];
            char *descriptionChars = (char *) sqlite3_column_text(statement,2);
            NSString *sceneDescription = [[NSString alloc]initWithUTF8String:descriptionChars];
            SceneModel *scene = [[SceneModel alloc]initWithSceneId:sceneID sceneTitle:sceneTitle sceneDescription:sceneDescription];
            //NSLog(@"Scene ID:%d, Scene Title:%@, SceneDescription:%@", sceneID, sceneTitle, sceneDescription);
            [retval addObject:scene];
            
        }
        sqlite3_finalize(statement);
    }//else{
        //NSLog(@"could not prepare statement: %s\n", sqlite3_errmsg(statement));
    //}
    return retval;
}

- (NSArray *)choices{
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"SELECT id,sceneid,choicenum,destinationid,description,quicktimeevent,minigame,ending FROM CHOICES";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int choiceID = sqlite3_column_int(statement,0);
            int choiceForScene = sqlite3_column_int(statement,1);
            int choiceNumber = sqlite3_column_int(statement,2);
            int destinationSceneID = sqlite3_column_int(statement,3);
            char *descriptionChars = (char *) sqlite3_column_text(statement,4);
            int choiceQuickTimeEventType = sqlite3_column_int(statement,5);
            int choiceMinigameType = sqlite3_column_int(statement,6);
            int choiceEnding = sqlite3_column_int(statement,7);
            NSString *choiceDescription = [[NSString alloc]initWithUTF8String:descriptionChars];
            //            NSLog(@"%@",choiceDescription);
            ChoiceModel *choice = [[ChoiceModel alloc]initWithChoiceInformation:choiceID choiceForScene:choiceForScene choiceNumber:choiceNumber destinationSceneId:destinationSceneID choiceQuickTimeEventType:choiceQuickTimeEventType choiceMinigameType:choiceMinigameType choiceEnding:choiceEnding choiceDescription:choiceDescription];
            [retval addObject:choice];
        }
        sqlite3_finalize(statement);
    }
    return retval;
}

- (NSArray *)choicesForScene:(int)sceneID{
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = [NSString stringWithFormat:@"SELECT id,sceneid,choicenum,destinationid,description,quicktimeevent,minigame,ending FROM CHOICES where sceneid = '%d'",sceneID];
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int choiceID = sqlite3_column_int(statement,0);
            int choiceForScene = sqlite3_column_int(statement,1);
            int choiceNumber = sqlite3_column_int(statement,2);
            int destinationSceneID = sqlite3_column_int(statement,3);
            char *descriptionChars = (char *) sqlite3_column_text(statement,4);
            int choiceQuickTimeEventType = sqlite3_column_int(statement,5);
            int choiceMinigameType = sqlite3_column_int(statement,6);
            int choiceEnding = sqlite3_column_int(statement,7);
            NSString *choiceDescription = [[NSString alloc]initWithUTF8String:descriptionChars];
            ChoiceModel *choice = [[ChoiceModel alloc]initWithChoiceInformation:choiceID choiceForScene:choiceForScene choiceNumber:choiceNumber destinationSceneId:destinationSceneID choiceQuickTimeEventType:choiceQuickTimeEventType choiceMinigameType:choiceMinigameType choiceEnding:choiceEnding choiceDescription:choiceDescription];
            [retval addObject:choice];
        }
        sqlite3_finalize(statement);
    }
    return retval;
}

-(NSArray *)sceneByID:(int)sceneID{
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = [NSString stringWithFormat:@"SELECT id, title, description FROM SCENES where sceneid = '%d'",sceneID];
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int sceneID = sqlite3_column_int(statement,0);
            char *titleChars = (char *) sqlite3_column_text(statement,1);
            NSString *sceneTitle = [[NSString alloc]initWithUTF8String:titleChars];
            char *descriptionChars = (char *) sqlite3_column_text(statement,2);
            NSString *sceneDescription = [[NSString alloc]initWithUTF8String:descriptionChars];
            SceneModel *scene = [[SceneModel alloc]initWithSceneId:sceneID sceneTitle:sceneTitle sceneDescription:sceneDescription];
            [retval addObject:scene];
            
        }
        sqlite3_finalize(statement);
    }
    return retval;
}

-(BOOL)isSceneQTE:(int)sceneID{
    BOOL sceneQTEStatus = false;
    NSString *query = [NSString stringWithFormat:@"SELECT quicktimeevent FROM SCENES where sceneid = '%d'",sceneID];
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int sceneQTE = sqlite3_column_int(statement,0);
            if(sceneQTE > 0){ //different types of QTE
                sceneQTEStatus = true;
            }
        }
        sqlite3_finalize(statement);
    }
    return sceneQTEStatus;
}

-(BOOL)isSceneEnding:(int)sceneID{
    BOOL sceneEndingStatus = false;
    NSString *query = [NSString stringWithFormat:@"SELECT ending FROM SCENES where sceneid = '%d'",sceneID];
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int sceneEnding = sqlite3_column_int(statement,0);
            if(sceneEnding > 0){ //different endings
                sceneEndingStatus = true;
            }
        }
        sqlite3_finalize(statement);
    }
    return sceneEndingStatus;
}

-(BOOL)isSceneMinigame:(int)sceneID{
    BOOL sceneMinigameStatus = false;
    NSString *query = [NSString stringWithFormat:@"SELECT minigame FROM SCENES where sceneid = '%d'",sceneID];
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            int sceneMinigame = sqlite3_column_int(statement,0);
            if(sceneMinigame > 0){ //different types of  minigames
                sceneMinigameStatus = true;
            }
        }
        sqlite3_finalize(statement);
    }
    return sceneMinigameStatus;
}

- (void)dealloc {
    sqlite3_close(_database);
}


-(void)saveGameAt:(int)sceneID{
    /*Implement later*/
}

-(BOOL)doesSaveExist:(int)sceneID{
    return NO;
}

@end
