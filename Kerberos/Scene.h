//
//  Scene.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Scene : UIView

@property (strong, nonatomic) UIView *view;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UILabel *sceneDescription;
@property (strong, nonatomic) NSArray *choices; // possibily don't need


@end
