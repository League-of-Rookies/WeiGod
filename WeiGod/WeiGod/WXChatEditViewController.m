//
//  WXCommunicationEditViewController.m
//  WeiGod
//
//  Created by wangjie on 16/1/21.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "WXChatEditViewController.h"
#import "WXHeadView.h"
#import "RKNavigationBarView.h"
#import "RKNavigationBarViewModel.h"
#import "WXChatEditViewController.h"
#import "CommonTool.h"
@interface WXChatEditViewController ()

@end

@implementation WXChatEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initHeadView];
}

/**
 *  初始化头视图
 */
- (void)initHeadView{
    WXHeadView * headview = [WXHeadView instanceObject];
    headview.frame=self.HeaderView.bounds;
    [self.HeaderView addSubview:headview];
}

-(void)initNavView{
    RKNavigationBarViewModel *model=[[RKNavigationBarViewModel alloc]init];
    model.titleIsHidden=YES;
    RKNavigationBarView *barView=[RKNavigationBarView instanceObjectWithModel:model];
    barView.frame=self.MyView.bounds;
    
    [barView handlerLeftButtonAction:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
    [barView handlerRightButtonAction:^{
        ///保存图片什么的
    }];
    [self.MyView addSubview:barView];
}



-(void)returnImage:(ReturnImageBlock)block{
    self.returnImageBlock
    =block;
}

-(void)viewWillDisappear:(BOOL)animated{
    
    if(self.returnImageBlock!=nil){
        self.returnImageBlock([CommonTool getImageFromView:self.MyView]);
    }
}
@end
