//
//  CenterNavigationController.m
//  Goer
//
//  Created by 李银 on 16/5/27.
//  Copyright © 2016年 liyin. All rights reserved.
//

#import "CenterNavigationController.h"
#import "ChatViewController.h"

@interface CenterNavigationController ()

@end

@implementation CenterNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    ChatViewController * chatVC = [[ChatViewController alloc] init];
    ChatViewController * chatVC2 = [[ChatViewController alloc] init];

    self.viewControllers = @[chatVC, chatVC2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
