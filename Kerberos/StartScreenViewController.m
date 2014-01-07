//
//  StartScreenViewController.m
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import "StartScreenViewController.h"

@interface StartScreenViewController ()

@end

@implementation StartScreenViewController

@synthesize StartButton,ContinueButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        DatabaseUtility *databaseUtility = [[DatabaseUtility alloc]init];
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
}

- (IBAction)continueButtonAction:(id)sender {
}

- (void) loadNewGame{
    
}

- (void) loadView{
    
}

- (void) checkSaveGame{
    
}

- (void) loadScene:(NSInteger *)sceneID{
    
}
@end
