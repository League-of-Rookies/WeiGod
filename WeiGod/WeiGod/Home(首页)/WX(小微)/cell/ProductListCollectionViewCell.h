//
//  ProductListCollectionViewCell.h
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProdListCollCellMod.h"


typedef void(^CellBlockClicked)(void);


@interface ProductListCollectionViewCell : UICollectionViewCell

@property(nonatomic,retain)ProdListCollCellMod *model;

@property(nonatomic,copy)CellBlockClicked cellBlockClicked;

-(void)handlerCellClickAction:(CellBlockClicked)block;///处理cell点击的事件

@end
