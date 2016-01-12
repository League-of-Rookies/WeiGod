//
//  BaseUIViewController.m
//  WeiGod
//
//  Created by wangjie on 16/1/12.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "BaseUIViewController.h"

@interface BaseUIViewController ()

@end

@implementation BaseUIViewController

@synthesize isHiddenBar=_isHiddenBar;

-(instancetype)init{
    if(self=[super init]){
        _isHiddenBar=YES;
    }
    return self;
}

-(void)setIsHiddenBar:(BOOL)isHiddenBar{
    _isHiddenBar=isHiddenBar;
}

-(BOOL)isHiddenBar{
    return _isHiddenBar;
}

-(BOOL)prefersStatusBarHidden{

    return self.isHiddenBar;

}
@end
