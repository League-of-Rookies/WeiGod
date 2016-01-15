//
//  ProductListViewController.m
//  WeiGod
//
//  Created by wangjie on 16/1/14.
//  Copyright © 2016年 WeiGod. All rights reserved.
//

#import "ProductListViewController.h"
#import "RKNavigationBarView.h"
#import "RKNavigationBarViewModel.h"
#import "ProductListCollectionViewCell.h"

@interface ProductListViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *HeaderView;
@property (weak, nonatomic) IBOutlet UICollectionView *ProductList;
@property(nonatomic,strong)NSMutableDictionary *productData;//集合

@end

@implementation ProductListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self initNavView];

  
    
    [self.ProductList registerClass:[ProductListCollectionViewCell class]forCellWithReuseIdentifier:@"ProductListCollectionViewCell"];
    [self.ProductList setBackgroundColor:[UIColor clearColor]];
    self.ProductList.delegate=self;
    self.ProductList.dataSource=self;
}

int i=1;

-(void)initNavView{
    
    RKNavigationBarViewModel *model=[[RKNavigationBarViewModel alloc]init];
    
    RKNavigationBarView *barView=[RKNavigationBarView instanceObjectWithModel:model];
    barView.frame=self.HeaderView.bounds;
    
    [barView handlerLeftButtonAction:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
    UICollectionViewFlowLayout *layout=self.ProductList.collectionViewLayout;
    [barView handlerRightButtonAction:^{
        //处理右边按钮的点击事件...应该可以优化的。懒得想了
        //最好是model再添加一个参数；
        i++;
        if(i%2==0){
            barView.model.rightButtonBackGround=@"productlist_show2";
            layout.scrollDirection=UICollectionViewScrollDirectionHorizontal;
            layout.itemSize=CGSizeMake(270, 490);
            [self.ProductList setCollectionViewLayout:layout animated:YES];
        }else{
        barView.model.rightButtonBackGround=@"productlist_show1";
            
            layout.scrollDirection=UICollectionViewScrollDirectionVertical;
            layout.itemSize=CGSizeMake(135, 240);
            [self.ProductList setCollectionViewLayout:layout animated:YES];
        }//这里绝对 需要优化的
        barView.model=barView.model;
    }];
    [self.HeaderView addSubview:barView];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 7;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ProductListCollectionViewCell *cell=(ProductListCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"ProductListCollectionViewCell" forIndexPath:indexPath];
    
    ProductListCollectionViewCellModel *model=[[ProductListCollectionViewCellModel alloc]init];
//    [model setTitleIsHidden:!model.titleIsHidden];
    cell.model=model;
    return cell;
}


@end
