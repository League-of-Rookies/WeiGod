//
//  RKTabBarController.m
//  WeiGod
//
//  Created by Toprank on 16/1/10.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "RKTabBarController.h"

@interface RKTabBarController ()

@end

@implementation RKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 添加所有的子控制器
    [self addAllChildVcs];
}

/**
 *添加所有的子控制器
 */
- (void)addAllChildVcs
{
    HomeViewController *homeCtl = [[HomeViewController alloc] init];
    [self addOneChlildVc:homeCtl title:@"首页" imageName:@"home" selectedImageName:@"home_on"];
    
    UserInfoViewController *nearCtl = [[UserInfoViewController alloc] init];
    [self addOneChlildVc:nearCtl title:@"我" imageName:@"me" selectedImageName:@"me_on"];
}

/**
 *  添加一个子控制器
 *
 *  @param childVc           子控制器对象
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)addOneChlildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 设置标题
    childVc.tabBarItem.title = title;
    
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    // 设置tabBarItem的普通文字颜色
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[UITextAttributeTextColor] = [UIColor blackColor];
    textAttrs[UITextAttributeFont] = [UIFont systemFontOfSize:10];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    // 设置tabBarItem的选中文字颜色
    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
    selectedTextAttrs[UITextAttributeTextColor] = [UIColor colorWithRed:29/255.0 green:143/255.0 blue:133/255.0 alpha:1];
    [childVc.tabBarItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateSelected];
    
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    if (iOS7) {
        // 声明这张图片用原图(别渲染)
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    childVc.tabBarItem.selectedImage = selectedImage;
    
    // 添加为tabbar控制器的子控制器
    RKNavigationController *nav = [[RKNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
