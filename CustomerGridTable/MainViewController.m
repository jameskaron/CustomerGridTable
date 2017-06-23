//
//  ViewController.m
//  CustomerGridTable
//
//  Created by pccw on 2/6/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import "MainViewController.h"
#import "GridTableViewController.h"

#define screen_height [UIScreen mainScreen].bounds.size.height
#define screen_width [UIScreen mainScreen].bounds.size.width

@interface MainViewController ()<GridTableDelegate>

@property (nonatomic) GridTableViewController* gridTableViewController;

@property (nonatomic) NSArray *dataSource;


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self initView];
}


-(void)initData{
    
    _dataSource = @[@"test1",@"test2"];
    
    
}

-(void)initView{
    
    CGRect statusBarRect = [[UIApplication sharedApplication] statusBarFrame];
    
    _gridTableViewController = [[GridTableViewController alloc]init];
    _gridTableViewController.gridTableDelegate = self;
    
    _gridTableViewController.dataSource = _dataSource;
    
    [self addChildViewController:_gridTableViewController];
    
    _gridTableViewController.view.frame = CGRectMake(0, statusBarRect.size.height, screen_width, screen_height);
    
    [self.view addSubview:_gridTableViewController.view];
    
}

/**
 * 选定cell获取选中账号的代理监听
 */
- (void)selectedCell:(NSInteger)index {

}

@end
