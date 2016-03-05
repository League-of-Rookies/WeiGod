//
//  WXCommunicationEditViewController.h
//  WeiGod
//
//  Created by wangjie on 16/1/21.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "BaseUIViewController.h"


typedef void(^ReturnImageBlock)(UIImage *image);

@interface WXChatEditViewController : BaseUIViewController
///要截图的view
@property (strong, nonatomic) IBOutlet UIView *MyView;
///微信头视图
@property (weak, nonatomic) IBOutlet UIView *HeaderView;
///返回block
@property(nonatomic,copy)ReturnImageBlock returnImageBlock;

-(void)returnImage:(ReturnImageBlock)block;

@end
