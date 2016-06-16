//
//  SecondViewController.m
//  SlideToUnlock
//
//  Created by Mulkey, Rodrigo S. on 6/9/16.
//  Copyright © 2016 Mulkey, Rodrigo S. All rights reserved.
//

#import "UnlockViewController.h"
#import "CircularLock.h"

@interface UnlockViewController ()

@end

@implementation UnlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CircularLock *circularLock = [[CircularLock alloc] initWithCenter:self.view.center
                                                    radius:80
                                                  duration:2.0
                                               strokeWidth:15
                                                 ringColor:[UIColor greenColor]
                                               strokeColor:[UIColor whiteColor]
                                               lockedImage:[UIImage imageNamed:@"lockedTransparent.png"]
                                             unlockedImage:[UIImage imageNamed:@"unlocked.png"]
                                                  isLocked:NO
                                         didlockedCallback:^{
                                             NSLog(@"locked");
                                         }
                                       didUnlockedCallback:^{
                                           NSLog(@"unlocked");
                                       }];
    
    [self.view addSubview:circularLock];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
