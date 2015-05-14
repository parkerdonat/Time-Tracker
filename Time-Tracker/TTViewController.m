//
//  TTViewController.m
//  Time-Tracker
//
//  Created by Parker Donat on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTViewController.h"
#import "TTListTableViewDataSource.h"

@interface TTViewController () <UITableViewDelegate>

@property (strong, nonatomic) TTListTableViewDataSource *dataSource;

@end

@implementation TTViewController

-(void)viewDidLoad
{
    UITableView *tableView = [UI]
}

- (id)init {
    
    self.dataSource = [TTListTableViewDataSource new];
}

@end
