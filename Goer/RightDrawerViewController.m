//
//  RightDrawerViewController.m
//  Goer
//
//  Created by 李银 on 16/5/27.
//  Copyright © 2016年 liyin. All rights reserved.
//

#import "RightDrawerViewController.h"
#import "AFNetworking.h"
#import "Define.h"
#import "WeatherModel.h"

@interface RightDrawerViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *weatherIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *windLabel;
@property (weak, nonatomic) IBOutlet UILabel *winpLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *weekLabel;
@property (weak, nonatomic) IBOutlet UITableView *nextWeatherTableView;
@property (weak, nonatomic) IBOutlet UILabel *weatherInfoLabel;
- (IBAction)refreshBtnClick:(id)sender;

@end

@implementation RightDrawerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getWeatherDateFromURL:WEATHER_URL];
    
}

- (void)getWeatherDateFromURL:(NSString *)url {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"res %@", responseObject);
        [self analyseDataWith:responseObject];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error %@", error);
    }];
}

- (void)analyseDataWith:(NSDictionary *)responseObject {

    NSArray *weatherAarray = [responseObject objectForKey:@"result"];
    _daysAarray = [[NSMutableArray alloc] init];

    for (int i = 0; i < weatherAarray.count; i ++) {
        WeatherModel *wm = [[WeatherModel alloc] init];
        
        wm.days = [weatherAarray[i] objectForKey:@"days"];
        wm.weeks = [weatherAarray[i] objectForKey:@"week"];
        wm.cityName = [weatherAarray[i] objectForKey:@"citynm"];
        wm.temperature = [weatherAarray[i] objectForKey:@"temperature"];
        wm.weatherInfo = [weatherAarray[i] objectForKey:@"weather"];
        wm.icon = [weatherAarray[i] objectForKey:@"weather_icon"];
        wm.wind = [weatherAarray[i] objectForKey:@"wind"];
        wm.winp = [weatherAarray[i] objectForKey:@"winp"];
        
        [_daysAarray addObject:wm];
    }
    
    [self configDataToUI];
}

- (void)configDataToUI {
    NSLog(@"cityName = %@", [_daysAarray objectAtIndex:0]);
    
    self.cityNameLabel.text = [[_daysAarray objectAtIndex:0] cityName];
    self.temperatureLabel.text = [[_daysAarray objectAtIndex:0] temperature];
    self.windLabel.text = [[_daysAarray objectAtIndex:0] wind];
    self.winpLabel.text = [[_daysAarray objectAtIndex:0] winp];
    self.dateLabel.text = [[_daysAarray objectAtIndex:0] days];
    self.weekLabel.text = [[_daysAarray objectAtIndex:0] weeks];
    self.weatherInfoLabel.text = [[_daysAarray objectAtIndex:0] weatherInfo];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)refreshBtnClick:(id)sender {
}
@end
