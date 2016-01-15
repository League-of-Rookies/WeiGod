//
//  ProductListCollectionViewCellModel.h
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import <Foundation/Foundation.h>

///存放productlist的背景图片和title说明
@interface ProductListCollectionViewCellModel : NSObject
@property(nonatomic,retain)NSString *backGround;
@property(nonatomic,retain)NSString *titleString;
@property(nonatomic)BOOL titleIsHidden;
@end
