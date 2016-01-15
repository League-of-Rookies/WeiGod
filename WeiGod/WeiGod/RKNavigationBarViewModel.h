//
//  RKNavigationBarViewModel.h
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import <Foundation/Foundation.h>

///自定义的导航属性应该有：左按钮背景，右按钮背景，中间标题，背景颜色，是否掩藏三个控件

@interface RKNavigationBarViewModel : NSObject

@property(nonatomic,retain)NSString *leftButtonBackGround;
@property(nonatomic,retain)NSString *rightButtonBackGround;
@property(nonatomic,retain)NSString *titleString;
@property(nonatomic)int bodyBackGroundColor;

@property(nonatomic)BOOL leftButtonIsHidden;

@property(nonatomic)BOOL rightButtonIsHidden;


@property(nonatomic)BOOL titleIsHidden;



@end
