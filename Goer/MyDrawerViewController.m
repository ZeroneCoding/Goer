//
//  MyDrawerViewController.m
//  Goer
//
//  Created by 李银 on 16/5/27.
//  Copyright © 2016年 liyin. All rights reserved.
//

#import "MyDrawerViewController.h"
#import "JVFloatingDrawerSpringAnimator.h"
#import "LeftDrawerViewController.h"
#import "RightDrawerViewController.h"
#import "RootViewController.h"

@interface MyDrawerViewController ()

@end

@implementation MyDrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configureDrawerViewController];
    
}

- (void)configureDrawerViewController {
    
    LeftDrawerViewController *leftDrawerVC = [[LeftDrawerViewController alloc] init];
    RightDrawerViewController *rightDrawerVC = [[RightDrawerViewController alloc] init];
    RootViewController *rootVC = [[RootViewController alloc] init];
    
    //UINavigationController *navCenter = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    self.leftViewController = leftDrawerVC;
    self.rightViewController = rightDrawerVC;
    self.centerViewController = rootVC;
    
    self.backgroundImage = [UIImage imageNamed:@"sky.jpg"];
    self.animator = [[JVFloatingDrawerSpringAnimator alloc] init];
    
    self.title = @"Main";
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"list"] style:UIBarButtonItemStyleDone target:self action:@selector(leftBtnClick)];
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"weather"] style:UIBarButtonItemStyleDone target:self action:@selector(rightBtnClick)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    
}

- (void)leftBtnClick {

    [self openDrawerWithSide:JVFloatingDrawerSideLeft animated:YES completion:^(BOOL finished) {
        
        if(finished){
            NSLog(@"left");
        }
    }];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)rightBtnClick {
    
    [self openDrawerWithSide:JVFloatingDrawerSideRight animated:YES completion:^(BOOL finished) {
        NSLog(@"right");
    }];
    self.navigationController.navigationBar.hidden = YES;

}


- (void)closeDrawerWithSide:(JVFloatingDrawerSide)drawerSide animated:(BOOL)animated completion:(void (^)(BOOL))completion {
    [super closeDrawerWithSide:drawerSide animated:animated completion:completion];
    
    self.navigationController.navigationBar.hidden = NO;
}

//- (void)openDrawerWithSide:(JVFloatingDrawerSide)drawerSide animated:(BOOL)animated completion:(void (^)(BOOL))completion {
//    [self openDrawerWithSide:drawerSide animated:animated completion:completion];
//    
//    //self.navigationController.navigationBar.hidden = YES;
//}

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
