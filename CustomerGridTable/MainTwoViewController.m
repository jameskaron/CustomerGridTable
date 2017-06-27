//
//  MainTwoViewController.m
//  CustomerGridTable
//
//  Created by pccw on 22/6/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import "MainTwoViewController.h"
#import "GridTableViewCell.h"

@interface MainTwoViewController ()

@property (weak, nonatomic) IBOutlet UITableView *table_view;

@property (nonatomic) NSArray *dataSource;


@end

@implementation MainTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
    [self initView];
    
}

-(void)initData{
    _dataSource = @[@"test1",@"test2"];
    _table_view.delegate = self;
    _table_view.dataSource = self;
    
}

-(void)initView{
    [_table_view setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    [self initBoardCoverView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    
    NSString *cellId = @"table_cell";
    GridTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[GridTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.text_view_one.text = [_dataSource objectAtIndex:row];
    
    //No clicked effect
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

-(void)initBoardCoverView{
    CGFloat tableview_x = _table_view.frame.origin.x;
    CGFloat tableview_y = _table_view.frame.origin.y;
    CGFloat tableview_width = _table_view.frame.size.width;
    CGFloat tableview_height = _table_view.frame.size.height;
    
    NSLog(@"table view x:%f,y:%f,width:%f,height:%f",tableview_x,tableview_y,tableview_width,tableview_height);
    
    UIView *upperCoverView = [[UIView alloc]initWithFrame:CGRectMake(0 , 0, tableview_width, 0.01*tableview_width)];
    upperCoverView.backgroundColor = [UIColor whiteColor];
    [_table_view addSubview:upperCoverView];
    
    UIView *sideCoverView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0.01*tableview_width, tableview_height)];
    sideCoverView.backgroundColor = [UIColor whiteColor];
    [_table_view addSubview:sideCoverView];
    
    GridTableViewCell *gridCell = [self tableView:_table_view cellForRowAtIndexPath:0];
    NSLog(@"grid cell x:%f,y:%f,width:%f,height:%f",gridCell.frame.origin.x,gridCell.frame.origin.y,gridCell.frame.size.width,gridCell.frame.size.height);
    
//    UIButton *grid_cell_button = gridCell.button;
//    CGFloat grid_cell_button_x = grid_cell_button.frame.origin.x;
//    CGFloat grid_cell_button_y = grid_cell_button.frame.origin.y;
//    CGFloat grid_cell_button_width = grid_cell_button.frame.size.width;
//    CGFloat grid_cell_button_height = grid_cell_button.frame.size.height;
//    NSLog(@"grid cell button frame: x:%f,y:%f,width:%f,heigh:%f",grid_cell_button_x,grid_cell_button_y,grid_cell_button_width,grid_cell_button_height);
    
//    NSLog(@"grid cell first lable frame: x:%f",gridCell.text_view_one.frame.origin.x);
    
    UILabel *grid_cell_label = gridCell.text_view_three;
    CGFloat grid_cell_label_x = grid_cell_label.frame.origin.x;
    CGFloat grid_cell_label_y = grid_cell_label.frame.origin.y;
    CGFloat grid_cell_label_width = grid_cell_label.frame.size.width;
    CGFloat grid_cell_label_height = grid_cell_label.frame.size.height;
    NSLog(@"grid cell label frame: x:%f,y,%f,width:%f,height:%f",grid_cell_label_x,grid_cell_label_y,grid_cell_label_width,grid_cell_label_height);
    
    UIView *buttonCoverView = [[UIView alloc]initWithFrame:CGRectMake(grid_cell_label_x + grid_cell_label_width - 1, 0, 0.01*tableview_width, tableview_height)];
    buttonCoverView.backgroundColor = [UIColor whiteColor];
    [_table_view addSubview:buttonCoverView];
}


@end
