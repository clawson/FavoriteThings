//
//  FavoriteThing.h
//  FavoriteThings-Objc
//
//  Created by Dan Clawson on 4/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FavoriteThings : NSObject

+ (NSInteger) count;
+ (NSString *) titleAtIndex: (NSInteger) index;

@end
