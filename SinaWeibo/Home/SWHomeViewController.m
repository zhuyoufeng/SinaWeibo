//
//  SWHomeViewController.m
//  SinaWeibo
//
//  Created by youfengzhu on 15/2/28.
//  Copyright (c) 2015年 zhuyoufeng. All rights reserved.
//

#import "SWHomeViewController.h"
#import "SinaWeibo.h"
#import "AppDelegate.h"
#import "SinaWeibo.h"

@interface SWHomeViewController () {
    AppDelegate     *_appDelegate;
    SinaWeibo       *_sinaWeibo;
}

@end

@implementation SWHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    _sinaWeibo = _appDelegate.sinaWeibo;
    // Title
    self.title = @"微博";
    
    if ([_sinaWeibo isLoggedIn]) {
        // Left Add User Icon
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:Image(@"addUser") style:UIBarButtonItemStylePlain target:self action:nil];
        // Right Write Weibo Icon
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:Image(@"editor") style:UIBarButtonItemStylePlain target:self action:nil];
    } else {
        // Right Login User Icon
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:Image(@"login") style:UIBarButtonItemStylePlain target:self action:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
