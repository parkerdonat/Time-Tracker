//
//  TTListViewController.m
//  Time-Tracker
//
//  Created by Parker Donat on 5/14/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListViewController.h"
#import "TTListTableViewDataSource.h"

@interface TTListViewController ()

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) TTListTableViewDataSource *dataSource;

@end

@implementation TTListViewController

- (void)viewDidLoad
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.dataSource = [TTListTableViewDataSource new];
}

@end
