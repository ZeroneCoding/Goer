//
//  LeftDrawerViewController.h
//  Goer
//
//  Created by 李银 on 16/5/27.
//  Copyright © 2016年 liyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftDrawerViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

{
    NSMutableArray *_dataArray;
    NSMutableArray *_imagesArray;
}

@end
