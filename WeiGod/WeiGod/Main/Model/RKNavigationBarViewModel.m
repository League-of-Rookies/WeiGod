//
//  RKNavigationBarViewModel.m
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "RKNavigationBarViewModel.h"

@implementation RKNavigationBarViewModel

-(instancetype)init{
    if (self=[super init]) {
        _leftButtonIsHidden=NO;
        _rightButtonIsHidden=NO;
        _titleIsHidden=YES;
        _leftButtonBackGround=@"nav_left";
        _rightButtonBackGround=@"productlist_show2";
    }
    
    return self;
}
@end
