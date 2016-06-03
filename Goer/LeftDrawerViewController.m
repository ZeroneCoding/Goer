//
//  LeftDrawerViewController.m
//  Goer
//
//  Created by 李银 on 16/5/27.
//  Copyright © 2016年 liyin. All rights reserved.
//

#import "LeftDrawerViewController.h"

@interface LeftDrawerViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *userLogoImageView;
@property (weak, nonatomic) IBOutlet UITableView *leftDrawerTableView;


@end

@implementation LeftDrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureUI];
}

- (void)configureUI {
    
    // To make the UserLogo Round
    _userLogoImageView.layer.masksToBounds = YES;
    _userLogoImageView.layer.cornerRadius = 40;
    
    // Set the tableView
    _leftDrawerTableView.delegate = self;
    _leftDrawerTableView.dataSource = self;
    
    // Init Data
    _dataArray = [NSMutableArray arrayWithObjects:@"PersonInformation", @"My Plan", @"Setting", nil];
    _imagesArray = [[NSMutableArray alloc] init];
    
    NSArray *array = [NSArray arrayWithObjects:@"personInfo", @"planlogo", @"settinglogo", nil];
    for (int i = 0; i < 3; i ++) {
        UIImage *img = [UIImage imageNamed:array[i]];
        [_imagesArray addObject:img];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellStr = @"ID";
    
    UITableViewCell *cell = [_leftDrawerTableView dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    
    cell.textLabel.text = [_dataArray objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor clearColor];
    cell.imageView.image = [_imagesArray objectAtIndex:indexPath.row];
    
    return cell;
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
