//
//  FavoriteThing.m
//  FavoriteThings-Objc
//
//  Created by Dan Clawson on 4/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThings.h"

static NSString * const ThingTitleKey = @"thingTitle";

@implementation FavoriteThings

+ (NSInteger) count {
    return [[self things] count];
}

+ (NSString *) titleAtIndex: (NSInteger) index {
    return [self things][index][ThingTitleKey];
}

+ (NSArray *) things {

    return @[
             @{ThingTitleKey : @"rain drops on roses"},
             @{ThingTitleKey : @"whiskers on kittens"},
             @{ThingTitleKey : @"bright copper kettles"},
             @{ThingTitleKey : @"warm woolen mittens"},
             @{ThingTitleKey : @"brown paper packaged tied up with strings"},
             @{ThingTitleKey : @"cream colored ponies"},
             @{ThingTitleKey : @"crisp apple strudels"},
             @{ThingTitleKey : @"door bells and sleigh bells"},
             @{ThingTitleKey : @"schitzel with noodles"},
             @{ThingTitleKey : @"wild geese the fly with the moon on the wings"}
             ];

}

@end
