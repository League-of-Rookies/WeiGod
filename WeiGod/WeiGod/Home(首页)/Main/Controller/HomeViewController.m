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
   ProdListViewController *weixinlist=[[ProdListViewController alloc]init];

    
    [self.navigationController pushViewController:weixinlist animated:YES];
}

@end
