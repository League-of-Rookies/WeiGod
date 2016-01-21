//
//  CommonTool.m
//  WeiGod
//
//  Created by wangjie on 16/1/21.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "CommonTool.h"


@implementation CommonTool


+(UIImage *)getImageFromView:(UIView *)orgView{
    UIGraphicsBeginImageContext(orgView.bounds.size);
    [orgView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
