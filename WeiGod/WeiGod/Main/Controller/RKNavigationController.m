//
//  RKNavigationController.m
//  WeiGod
//
//  Created by Toprank on 16/1/10.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "RKNavigationController.h"

@interface RKNavigationController ()

@end

@implementation RKNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    if (self = [super initWithRootViewController:rootViewController]) {
        // 设置navigationBar是否透明，不透明的话会使可用界面原点下移（0，0）点为导航栏左下角下方的那个点
//       self.navigationBar.translucent = NO;
        NSLog(@"11");
        self.navigationBar.hidden = YES;
    }
    return self;
}



@end
