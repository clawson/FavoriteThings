//
//  FTViewController.m
//  FavoriteThings-Objc
//
//  Created by Dan Clawson on 4/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FTViewController.h"
#import "FavoriteThings.h"

@interface FTViewController () <UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *sections;

@end

@implementation FTViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    [self.tableView setBackgroundColor:[UIColor orangeColor]];

    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //return 3;
    NSArray *sections = @[@"One", @"Two", @"Three"];
    self.sections = sections;
    return [sections count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [self.sections objectAtIndex:section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 4;
    } else if (section == 1) {
        return 2;
    } else {
        return 5;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = @"Nigel is awesome!";
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
