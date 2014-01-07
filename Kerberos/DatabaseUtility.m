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
        NSString *sqLiteDb = [[NSBundle mainBundle] pathForResource:@"kerberos"
                                                             ofType:@"db"];
        
        if (sqlite3_open([sqLiteDb UTF8String], &_database) != SQLITE_OK) {
            NSLog(@"Failed to open database!");
        }
    }
    return self;
}

- (NSArray *)scenes{
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"SELECT id, title, description FROM SCENES";
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

- (NSArray *)choices{
    NSMutableArray *retval = [[NSMutableArray alloc] init];
    NSString *query = @"SELECT id,sceneid,choicenum,destinationid,description,quicktimeevent,minigame,ending FROM CHOICES";
    sqlite3_stmt *statement;
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil)
        == SQLITE_OK) {
        while (sqlite3_step(statement) == SQLITE_ROW) {
            
        }
        sqlite3_finalize(statement);
    }
    return retval;
}

- (void)dealloc {
    sqlite3_close(_database);
}

-(void)findScene:(NSInteger)sceneID{
    
}

-(void)findChoices:(NSInteger)sceneID{
    
}

-(BOOL)doesSaveExist{
    return NO;
}

-(void)findSave{
    
}

-(void)saveGameAt:(NSInteger)sceneID{
    
}

-(void)getAllChoices{
    
}

-(void)getAllScenes{
    
}

@end
