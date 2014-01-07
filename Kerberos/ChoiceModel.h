//
//  ChoiceModel.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ChoiceModel : NSObject

@property (nonatomic, retain) IBOutletCollection(UIButton) NSArray *buttons;
//Array of buttons to be sent to the scene drawer.
@property (nonatomic, weak) NSString *choiceText;
//Text of choice button.
@property (nonatomic, assign) NSInteger choiceID;
//ID of Choice button (e.g. 4th choice)
@property (nonatomic, weak) UIButton *choiceButton;



- (void) getChoicesForScene;
//Hit database to get a list of the available choices.
- (void) setChoicesForButtons;
//Set the buttons with the previous information.
- (void) createChoiceButton: (NSString *) choiceText choiceID : (NSInteger) choiceID;
//Create a choice button.

@end
