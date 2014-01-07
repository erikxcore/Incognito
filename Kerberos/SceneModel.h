//
//  SceneModel.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SceneModel : NSObject{
    int _sceneID;
    NSString *_sceneTitle;
    UIView *_sceneBackground;
    UIImageView *_sceneBackgroundImage;
    NSString *_sceneDescription;
}

@property (copy, nonatomic) NSString *sceneTitle;
@property (copy, nonatomic) NSString *sceneDescription;
@property (assign, nonatomic) int sceneID;
@property (copy, nonatomic) UIView *sceneBackground;
//Sound
//Other Images
@property (copy, nonatomic) UIImageView *sceneBackgroundImage;

- (void) setBackgroundImage :(UIView *)sceneBackgroundImage;
//Set background image.

-(id)initWithSceneId:(int)sceneID sceneTitle:(NSString *)sceneTitle sceneBackgroundImage:(UIImageView *)sceneBackgroundImage;

-(id)initWithSceneId:(int) sceneID sceneTitle:(NSString *)sceneTitle sceneDescription:(NSString *)sceneDescription;

@end
