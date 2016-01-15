//
//  ProductListCollectionViewCellModel.m
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "ProductListCollectionViewCellModel.h"

@implementation ProductListCollectionViewCellModel

-(instancetype)init{
    if (self=[super init]) {
     
        _backGround=@"weixinduihua";
        _titleString=@"微信聊天对话界面";
        _titleIsHidden=NO;
    }
    
    return self;
}
@end
