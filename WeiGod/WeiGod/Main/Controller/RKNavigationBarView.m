//
//  RKNavigationBarView.m
//  WeiGod
//
//  Created by wangjie on 16/1/15.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "RKNavigationBarView.h"

@interface RKNavigationBarView()
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UITextField *title;

@end

@implementation RKNavigationBarView

+(instancetype)instanceObject{

    NSArray *nibView=[[NSBundle mainBundle]loadNibNamed:@"RKNavigationBarView" owner:nil options:nil];
    return [nibView objectAtIndex:0];
}


+(instancetype)instanceObjectWithModel:(RKNavigationBarViewModel *)model{
    RKNavigationBarView *barView=[self instanceObject];
    barView.model=model;
    return barView;
 }

-(void)setModel:(RKNavigationBarViewModel *)model{
    _model=model;
    //View的一些初始化
    if(model.leftButtonBackGround){
        [self.leftButton setBackgroundImage:[UIImage imageNamed:model.leftButtonBackGround] forState:UIControlStateNormal];
    }
    if(model.rightButtonBackGround){
        [self.rightButton setBackgroundImage:[UIImage imageNamed:model.rightButtonBackGround] forState:UIControlStateNormal];
    }
    if(model.bodyBackGroundColor){
        [self setBackgroundColor:HexRGBAlpha(model.bodyBackGroundColor, 1.0)];
    }
    if (model.leftButtonIsHidden) {
        [self.leftButton setHidden:model.leftButtonIsHidden];
    }if (model.rightButtonIsHidden) {
        [self.rightButton setHidden:model.rightButtonIsHidden];
    }if(model.titleIsHidden){
        [self.title setHidden:model.titleIsHidden];
    }if (model.titleString) {
        [self.title setText:model.titleString];
    }
}
- (IBAction)leftButtonClicked:(UIButton *)sender {
    if(self.leftBlockClicked){
        self.leftBlockClicked();
    }
}

-(void)handlerLeftButtonAction:(LeftBlockButtonClicked)block{
    self.leftBlockClicked=block;
}
- (IBAction)rightButtonClicked:(UIButton *)sender {
    if (self.rightBlockClicked) {
        self.rightBlockClicked();
    }
}

-(void)handlerRightButtonAction:(RightBlockButtonClicked)block{
    self.rightBlockClicked=block;
}

@end
