//
//  ProductListCollectionViewCellModel.m
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "ProdListCollCellMod.h"

@implementation ProdListCollCellMod

-(instancetype)init{
    if (self=[super init]) {
     
        _backGround=@"wx1";
        _titleString=@"微信聊天对话界面";
       
        _IsBigShow=NO;
        if(_IsBigShow){
            _titleIsHidden=YES;
        }else
        {
            _titleIsHidden=NO;
        }
        _jumpType=1;
    }
    
    return self;
}


-(void)setIsBigShow:(BOOL)IsBigShow{
    _IsBigShow=IsBigShow;
    if(_IsBigShow){
        _titleIsHidden=YES;
    }else
    {
        _titleIsHidden=NO;
    }

}
@end
