//
//  PlayerModel.h
//  Kerberos
//
//  Created by NY-GO-OSSAPP on 1/3/14.
//  Copyright (c) 2014 Eric Barber. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerModel : NSObject
//For shooting minigame, possible implementation into story.

@property (nonatomic, assign) NSInteger currentHealth;
//Current health of player.
@property (nonatomic, readonly) NSInteger maxHealth;
//Maximum health of player.
@property (nonatomic, assign) BOOL weaponReady;
//Is player ready to fire weapon?

- (void) dealtDamage:(NSInteger) damageAmount;
//If player is hit, for example in the minigame by an enemy or potentially during the strory for a wrong decision.
- (void) fireAtLocation:(NSInteger) gridNumber;
//Where a player taps, UIView will be divided in a 3x3 grid
- (void) readyWeapon;

@end
