//
//  ChoiceModel.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ChoiceModel : NSObject{
    int _choiceID;
    int _choiceForScene;
    int _choiceNumber;
    int _destinationSceneID;
    NSString *_choiceDescription;
    int _choiceQuickTimeEventType;
    int _choiceMinigameType;
    int _choiceEnding;
}

@property (nonatomic, assign) int choiceID;
@property (nonatomic, assign) int choiceForScene;
@property (nonatomic, assign) int choiceNumber;
@property (nonatomic, assign) int destinationSceneID;
@property (nonatomic, assign) int choiceQuickTimeEventType;
@property (nonatomic, assign) int choiceMinigameType;
@property (nonatomic, assign) int choiceEnding;
@property (nonatomic, copy) NSString *choiceDescription;

-(id)initWithChoiceInformation:(int)choiceID choiceForScene:(int)choiceForScene choiceNumber:(int)choiceNumber destinationSceneId:(int)destinationSceneId choiceQuickTimeEventType:(int)choiceQuickTimeEventType choiceMinigameType:(int)choiceMinigameType choiceEnding:(int)choiceEnding choiceDescription:(NSString *)choiceDescription;

@end
