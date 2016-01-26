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
@property (strong, nonatomic) IBOutlet UIView *HeaderView;

@property(nonatomic,copy)ReturnImageBlock returnImageBlock;

-(void)returnImage:(ReturnImageBlock)block;

@end
