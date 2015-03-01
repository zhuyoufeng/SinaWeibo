//
//  CONSTANTS.h
//  SinaWeibo
//
//  Created by youfengzhu on 15/2/28.
//  Copyright (c) 2015年 zhuyoufeng. All rights reserved.
//

#ifndef SinaWeibo_CONSTANTS_h
#define SinaWeibo_CONSTANTS_h

// Constants
#define kAppKey                     @"100276913"
#define kAppSecret                  @"82acc18595cd3247665a853d026dc729"
#define kAppRedirectURL             @"http://open.weibo.com/apps/100276913"

// Common methods
#define Color(r, g, b, a)           [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define Image(imageName)            [UIImage imageNamed:imageName]
#define ScreenHeight                [UIScreen mainScreen].bounds.size.height
#define ScreenWidth                 [UIScreen mainScreen].bounds.size.width

#endif
