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

- (IBAction)loginClick:(id)sender {
    NSLog(@"hello");
    MyDrawerViewController *myDVC = [[MyDrawerViewController alloc] init];
    UINavigationController *navigationC = [[UINavigationController alloc] initWithRootViewController:myDVC];
    
    [self presentViewController:navigationC animated:YES completion:nil];
}

@end
