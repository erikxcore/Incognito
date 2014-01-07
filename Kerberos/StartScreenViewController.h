//
//  StartScreenViewController.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DatabaseUtility.h"


@interface StartScreenViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *StartButton;
@property (weak, nonatomic) IBOutlet UIButton *ContinueButton;
//Buttons



- (IBAction)startButtonAction:(id)sender;
//Pass scene ID through this method
- (IBAction)continueButtonAction:(id)sender;
//Pass scene ID through this method, SceneDecider/Drawer will take care of the rest
- (void) checkSaveGame;
//Check if save game exists in database
- (void) loadScene:(NSInteger *)sceneID;
//If save game exists take the ID of the scene where user stopped and send that value through the continueButtonAction method.
- (void) loadNewGame;
//Using the startButtonAction proceed with a new game.

@end
