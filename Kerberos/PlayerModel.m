//
//  PlayerModel.m
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import "PlayerModel.h"

@implementation PlayerModel

@synthesize currentHealth, maxHealth, weaponReady;

- (void) dealtDamage:(NSInteger)damageAmount{
    [self setCurrentHealth:damageAmount];
}

- (void) fireAtLocation:(NSInteger)gridNumber{
    
}

- (void) readyWeapon{
    [self setWeaponReady:YES];
}

@end
