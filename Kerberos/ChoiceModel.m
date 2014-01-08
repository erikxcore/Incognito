//
//  ChoiceModel.m
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import "ChoiceModel.h"

@implementation ChoiceModel

@synthesize choiceID = _choiceID;
@synthesize choiceForScene = _choiceForScene;
@synthesize choiceNumber = _choiceNumber;
@synthesize destinationSceneID = _destinationSceneID;
@synthesize choiceQuickTimeEventType = _choiceQuickTimeEventType;
@synthesize choiceMinigameType = _choiceMinigameType;
@synthesize choiceEnding = _choiceEnding;
@synthesize choiceDescription = _choiceDescription;

-(id)initWithChoiceInformation:(int)choiceID choiceForScene:(int)choiceForScene choiceNumber:(int)choiceNumber destinationSceneId:(int)destinationSceneId choiceQuickTimeEventType:(int)choiceQuickTimeEventType choiceMinigameType:(int)choiceMinigameType choiceEnding:(int)choiceEnding choiceDescription:(NSString *)choiceDescription{
        if ((self = [super init])) {
            self.choiceID = choiceID;
            self.choiceForScene = choiceForScene;
            self.choiceNumber = choiceNumber;
            self.destinationSceneID = destinationSceneId;
            self.choiceQuickTimeEventType = choiceQuickTimeEventType;
            self.choiceMinigameType = choiceMinigameType;
            self.choiceEnding = choiceEnding;
            self.choiceDescription = choiceDescription;
        }
    return self;
}

-(void) dealloc{
    self.choiceDescription = nil;
}


@end
