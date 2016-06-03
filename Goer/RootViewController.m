//
//  RootViewController.m
//  Goer
//
//  Created by 李银 on 16/5/27.
//  Copyright © 2016年 liyin. All rights reserved.
//

#import "RootViewController.h"
#import "ChatViewController.h"

@interface RootViewController ()

- (IBAction)chatBtnClick:(id)sender;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chatBtnClick:(id)sender {
    ChatViewController *chatVC = [[ChatViewController alloc] init];
    [self.navigationController pushViewController:chatVC animated:YES];
}
@end
