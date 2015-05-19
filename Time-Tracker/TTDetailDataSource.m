//
//  TTDetailDataSource.m
//  Time-Tracker
//
//  Created by Joshua Howland on 6/6/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TTDetailDataSource.h"
#import "ProjectController.h"

@implementation TTDetailDataSource

//set the numbder of rows using the entries property on the project
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.project.entries count];
}

//Create a new entry using the entries array and the indexPath
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EntryCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"EntryCell"];
    }
    
    Entry *entry = [self.project entries][indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@", entry.startTime, entry.endTime];
    
    return cell;
}


@end
