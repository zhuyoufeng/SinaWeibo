//
//  SWCommonViewController.m
//  SinaWeibo
//
//  Created by youfengzhu on 15/2/28.
//  Copyright (c) 2015年 zhuyoufeng. All rights reserved.
//

#import "SWCommonViewController.h"

@interface SWCommonViewController ()

@end

@implementation SWCommonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Update Navigation Bar Background Color
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = Color(92, 175, 239, 0.8);
    // Update the color of navigation bar title to whilte
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
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
