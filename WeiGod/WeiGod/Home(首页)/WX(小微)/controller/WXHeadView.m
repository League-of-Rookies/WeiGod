//
//  WXHeadView.m
//  WeiGod
//
//  Created by Toprank on 16/3/3.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "WXHeadView.h"

@implementation WXHeadView

+(instancetype)instanceObject{
    
    NSArray *nibView=[[NSBundle mainBundle]loadNibNamed:@"WXHeadView" owner:nil options:nil];
    return [nibView objectAtIndex:0];
}

@end
