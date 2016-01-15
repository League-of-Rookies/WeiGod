//
//  RKNavigationBarView.h
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RKNavigationBarViewModel.h"

typedef void(^LeftBlockButtonClicked)(void);
typedef void(^RightBlockButtonClicked)(void);

@interface RKNavigationBarView : UIView
@property(nonatomic,retain)RKNavigationBarViewModel *model;
@property(nonatomic,copy)LeftBlockButtonClicked leftBlockClicked;
@property(nonatomic,copy)RightBlockButtonClicked rightBlockClicked;

+(instancetype)instanceObjectWithModel:(RKNavigationBarViewModel *)model;

-(void)handlerLeftButtonAction:(LeftBlockButtonClicked)block;
-(void)handlerRightButtonAction:(RightBlockButtonClicked)block;
@end
