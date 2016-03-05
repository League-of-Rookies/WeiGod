//
//  WXCommunicationPreviewViewController.m
//  WeiGod
//
//  Created by wangjie on 16/1/21.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "WXChatPreviewViewController.h"
#import "RKNavigationBarView.h"
#import "RKNavigationBarViewModel.h"
#import "WXChatEditViewController.h"

@interface WXChatPreviewViewController ()
@property (strong, nonatomic) IBOutlet UIView *HeaderView;
@property (strong, nonatomic) IBOutlet UIView *FooterView;


@end

@implementation WXChatPreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavView];
    [self initFooterView];

}


-(void)initNavView{
    RKNavigationBarViewModel *model=[[RKNavigationBarViewModel alloc]init];
    model.titleIsHidden=NO;
    model.titleString=@"预览";
    RKNavigationBarView *barView=[RKNavigationBarView instanceObjectWithModel:model];
    barView.frame=self.HeaderView.bounds;
    
    [barView handlerLeftButtonAction:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
    [barView handlerRightButtonAction:^{
    ///保存图片什么的
    }];
    [self.HeaderView addSubview:barView];
}

-(void)initFooterView{
    
}
///编辑按钮点击
- (IBAction)ButtonEditingClicked:(UIButton *)sender {
    WXChatEditViewController *wx=[[WXChatEditViewController alloc]init];
    [wx returnImage:^(UIImage *image) {
        self.perviewImage=image;
    }];
    [self.navigationController pushViewController:wx animated:YES];
}
-(void)viewWillAppear:(BOOL)animated{
    if(self.perviewImage!=nil){
        [self.PerviewImageView setImage:self.perviewImage];
    }else{
        [self.PerviewImageView setImage:[UIImage imageNamed:@"wx1"]];
    }
}
@end
