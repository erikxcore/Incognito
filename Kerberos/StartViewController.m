//
//  StartViewController.m
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/8/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

@synthesize StartButton,ContinueButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startButtonAction:(id)sender {
    SceneDecider *SceneDecider;
    [SceneDecider moveToScene:0];
}

- (IBAction)continueButtonAction:(id)sender {
}



@end
