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

+ (void)initialize
{
    NSLog(@"初始化");
    UINavigationBar *appearance = [UINavigationBar appearance];
    [appearance setHidden:YES];
}





@end
