//
//  ThingsTableViewDataSource.h
//  FavoriteThings-Objc
//
//  Created by Dan Clawson on 4/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ThingsTableViewDataSource : NSObject <UITableViewDataSource>

- (void) registerTableView: (UITableView *) tableView;

@end
