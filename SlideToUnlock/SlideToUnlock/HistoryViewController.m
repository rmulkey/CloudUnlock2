//
//  HistoryViewController.m
//  CloudUnlock
//
//  Created by Mulkey, Rodrigo S. on 6/17/16.
//  Copyright © 2016 Mulkey, Rodrigo S. All rights reserved.
//

#import "HistoryViewController.h"
#import "HistoryTableViewCell.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView Delegates

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Create and reuse cell
    
    static NSString *cellIdentifier = @"historyCell";
    
    HistoryTableViewCell *cell = [tableView
                         dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[HistoryTableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:cellIdentifier];
    }
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0f;
}



@end
