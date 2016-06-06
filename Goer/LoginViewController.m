//
//  LoginViewController.m
//  Goer
//
//  Created by 李银 on 16/5/26.
//  Copyright © 2016年 liyin. All rights reserved.
//

#import "LoginViewController.h"
#import "MyDrawerViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)loginClick:(id)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_userNameTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)loginClick:(id)sender {
    MyDrawerViewController *myDVC = [[MyDrawerViewController alloc] init];
    UINavigationController *navigationC = [[UINavigationController alloc] initWithRootViewController:myDVC];
    
    [self presentViewController:navigationC animated:YES completion:nil];
}

@end
