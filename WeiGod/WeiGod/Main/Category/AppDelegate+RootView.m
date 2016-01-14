//
//  AppDelegate+RootView.m
//  WeiGod
//
//  Created by Toprank on 16/1/10.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "AppDelegate+RootView.h"

@implementation AppDelegate (RootView)

- (void)InitRootview
{
    
    // 如何知道第一次使用这个版本？比较上次的使用情况
    NSString *versionKey = (__bridge NSString *)kCFBundleVersionKey;
    
    // 从沙盒中取出上次存储的软件版本号(取出用户上次的使用记录)
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *lastVersion = [defaults objectForKey:versionKey];
    
    // 获得当前打开软件的版本号
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[versionKey];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    if ([currentVersion isEqualToString:lastVersion]) { // 当前版本号 == 上次使用的版本
        RKTabBarController * tabbarcontroller = [[RKTabBarController alloc]init];
        RKNavigationController *nav=[[RKNavigationController alloc]init];
        [nav addChildViewController:tabbarcontroller];
        self.window.rootViewController = nav;
        
    } else {
        // 当前版本号 != 上次使用的版本：显示引导页面
//        self.window.rootViewController = [[AdvertisementViewController alloc] init];
        
        // 存储这次使用的软件版本
        [defaults setObject:currentVersion forKey:versionKey];
        
        //添加此句会立马存储版本号，不然会随机存储
        [defaults synchronize];
        
    }
    
}


@end
