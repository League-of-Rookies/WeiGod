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
@property(nonatomic,strong)NSMutableArray *productData;//集合
@property(nonatomic)BOOL isBigShow;///是否大图显示
@end

@implementation ProductListViewController

-(instancetype)init{
    if (self=[super init]) {
        _isBigShow=NO;
        _productData=[[NSMutableArray alloc]initWithArray:[NSArray new]];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self initNavView];
    [self initProductData];

  
    
    [self.ProductList registerClass:[ProductListCollectionViewCell class]forCellWithReuseIdentifier:@"ProductListCollectionViewCell"];
    [self.ProductList setBackgroundColor:[UIColor clearColor]];
    self.ProductList.delegate=self;
    self.ProductList.dataSource=self;
}

-(void)initProductData{
    for (int i=1; i<=6; i++) {
        ProductListCollectionViewCellModel *model=[[ProductListCollectionViewCellModel alloc]init];
        model.titleString=[NSString stringWithFormat:@"微信界面%d",i];
        model.backGround=[NSString stringWithFormat:@"wx%d",i];
        [self.productData addObject:model];
    }
    

}

-(void)initNavView{
    
    RKNavigationBarViewModel *model=[[RKNavigationBarViewModel alloc]init];
    
    RKNavigationBarView *barView=[RKNavigationBarView instanceObjectWithModel:model];
    barView.frame=self.HeaderView.bounds;
    
    [barView handlerLeftButtonAction:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
    UICollectionViewFlowLayout * layout=(UICollectionViewFlowLayout *)self.ProductList.collectionViewLayout;
    [barView handlerRightButtonAction:^{
        //处理右边按钮的点击事件...应该可以优化的。懒得想了
        //最好是model再添加一个参数；
       // i++;
    
        if(!self.isBigShow){
            self.isBigShow=YES;
            barView.model.rightButtonBackGround=@"productlist_show2";
            layout.scrollDirection=UICollectionViewScrollDirectionHorizontal;
            layout.itemSize=CGSizeMake(270, 480);
            layout.minimumLineSpacing=40.0f;
            layout.sectionInset=UIEdgeInsetsMake(0,20 , 40, 20);
            self.ProductList.pagingEnabled=YES;
            [self.ProductList setCollectionViewLayout:layout animated:YES];
        }else{
            self.isBigShow=NO;
            barView.model.rightButtonBackGround=@"productlist_show1";
            
            layout.scrollDirection=UICollectionViewScrollDirectionVertical;
            layout.itemSize=CGSizeMake(135, 240);
            layout.minimumLineSpacing=10.0f;
            layout.sectionInset=UIEdgeInsetsMake(0, 15, 0, 15);
            self.ProductList.pagingEnabled=NO;
            [self.ProductList setCollectionViewLayout:layout animated:YES];
        }//这里绝对 需要优化的
        barView.model=barView.model;
      
        [self.ProductList reloadData];
    }];
    [self.HeaderView addSubview:barView];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
      NSLog(@"self.productData.count:%lu", (unsigned long)self.productData.count);
    return self.productData.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ProductListCollectionViewCell *cell=(ProductListCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"ProductListCollectionViewCell" forIndexPath:indexPath];
    
    ProductListCollectionViewCellModel *model=[self.productData objectAtIndex:indexPath.row];


    if (self.isBigShow) {
        model.IsBigShow=YES;
    }else{
    
        model.IsBigShow=NO;}
    cell.model=model;
    [cell handlerCellClickAction:^{
        NSLog(@"clicked:%ld",(long)indexPath.row);
    }];
    return cell;
}


@end
