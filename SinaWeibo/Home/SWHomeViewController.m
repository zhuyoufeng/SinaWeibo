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

@interface SWHomeViewController () <SinaWeiboDelegate, SinaWeiboRequestDelegate> {
    AppDelegate     *_appDelegate;
    SinaWeibo       *_sinaWeibo;
}

@end

@implementation SWHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    _sinaWeibo = _appDelegate.sinaWeibo;
    _sinaWeibo.delegate = self;
    
    // Title
    self.title = @"微博";
    
    [self _initNavigationItem:_sinaWeibo.isAuthValid];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Init Navigation Item
- (void) _initNavigationItem: (BOOL) isAuthValid {
    if (isAuthValid) {
        // Left Add User Icon
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:Image(@"addUser") style:UIBarButtonItemStylePlain target:self action:nil];
        // Right Write Weibo Icon
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:Image(@"editor") style:UIBarButtonItemStylePlain target:self action:nil];
    } else {
        // Right Login User Icon
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:Image(@"login") style:UIBarButtonItemStylePlain target:self action:@selector(_login)];
        // Get public time line
        [self _getPublicTimeline];
    }
}

#pragma mark -
#pragma mark SinaWeibo SSO
- (void) _login {
    if (!_sinaWeibo.isAuthValid) {
        [_sinaWeibo logIn];
    }
}

- (void)sinaweiboDidLogIn:(SinaWeibo *)sinaweibo {
    // After login successfully, save the access token key and user id key to NSUserDefaults.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *sinaWeiboInfo = [[NSDictionary alloc] initWithObjectsAndKeys:sinaweibo.accessToken, @"AccessTokenKey", sinaweibo.expirationDate, @"ExpirationDateKey", sinaweibo.userID, @"UserIDKey", nil];
    [defaults setObject:sinaWeiboInfo forKey:@"SinaWeiboAutoData"];
    
    // Reload the navigation item
    [self _initNavigationItem:_sinaWeibo.isAuthValid];
}

#pragma mark -
#pragma mark Get SinaWeibo Timeline
- (void) _getHomeTimeline {
    
}

#pragma mark SinaWeiboRequestDelegate
- (void)request:(SinaWeiboRequest *)request didReceiveRawData:(NSData *)data {
    NSLog(@"%@", data);
}

@end
