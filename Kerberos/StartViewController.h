//
//  StartViewController.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/8/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SceneDecider.h"

@interface StartViewController : UIViewController

@property (weak, nonatomic) SceneDecider *sceneDecider;
@property (weak, nonatomic) IBOutlet UIButton *StartButton;
@property (weak, nonatomic) IBOutlet UIButton *ContinueButton;

- (IBAction)startButtonAction:(id)sender;
- (IBAction)continueButtonAction:(id)sender;

@end
