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
    /*NSArray *scenes = [DatabaseUtility database].scenes;
    for(SceneModel *scene in scenes){
        NSLog(@"%d: %@ %@", scene.sceneID, scene.sceneTitle, scene.sceneDescription );
    }
    */
    NSArray *choices = [DatabaseUtility database].choices;
    for(ChoiceModel *choice in choices){
        NSLog(@"%d %d %d %d %d %d %d %@",choice.choiceID,choice.choiceForScene,choice.choiceNumber,choice.destinationSceneID,choice.choiceQuickTimeEventType,choice.choiceMinigameType,choice.choiceEnding,choice.choiceDescription);
    }
    /*NSLog(@"Attempting to get choices for first scene");
    NSArray *choicesForScene1 = [[DatabaseUtility database]choicesForScene:1 ];
    for(ChoiceModel *choice in choicesForScene1){
                NSLog(@"%d %d %d %d",choice.choiceID,choice.choiceForScene,choice.choiceNumber,choice.destinationSceneID);
    }
    */
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


- (void)loadNewGame{
    
}

- (void)checkSaveGame{
    
}

- (void)loadScene:(NSInteger *)sceneID{
    
}


@end
