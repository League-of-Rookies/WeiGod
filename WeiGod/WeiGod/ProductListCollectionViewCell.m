//
//  ProductListCollectionViewCell.m
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "ProductListCollectionViewCell.h"

@interface ProductListCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *cellBackGround;
@property (weak, nonatomic) IBOutlet UILabel *titleDetails;

@end

@implementation ProductListCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        NSArray *arrayOfViews=[[NSBundle mainBundle]loadNibNamed:@"ProductListCollectionViewCell" owner:nil options:nil];
        if(arrayOfViews.count<1){return nil;}
        if(![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]){
            return nil;
        }
        self=[arrayOfViews objectAtIndex:0];
    }
    return self;
}


-(void)setModel:(ProductListCollectionViewCellModel *)model{
    _model=model;
    if (_model.backGround) {
        [self.cellBackGround setImage:[UIImage imageNamed:_model.backGround]];
    }if(_model.titleString){
        [self.titleDetails setText:_model.titleString];
    }if (_model.titleIsHidden) {
        [self.titleDetails setHidden:_model.titleIsHidden];
    }
    
}
@end
