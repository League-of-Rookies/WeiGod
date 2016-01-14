//
//  HomeViewController.m
//  WeiGod
//
//  Created by Toprank on 16/1/10.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnWeiXinClicked:(UIButton *)sender {
//    
   ProductListViewController *weixinlist=[[ProductListViewController alloc]init];
//    RKNavigationController *nav=[[RKNavigationController alloc]initWithRootViewController:weixinlist];
//    nav.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
//    [self presentViewController:nav animated:YES completion:^{
//        
//        
//    }];
    
    [self.navigationController pushViewController:weixinlist animated:YES];
}

@end
