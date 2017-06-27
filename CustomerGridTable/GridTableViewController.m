//
//  GridTableViewController.m
//  CustomerGridTable
//
//  Created by pccw on 15/6/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import "GridTableViewController.h"

@interface GridTableViewController ()

@end

@implementation GridTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.backgroundColor = [UIColor whiteColor];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSLog(@"datasource count:%lu",(unsigned long)_dataSource.count);
    return _dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellId = @"GridViewTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    //setup content of cells
//    long index = indexPath.row;
    // 添加数据源
    cell.textLabel.text = [_dataSource objectAtIndex:indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    
//    cell.layer.borderWidth = 0.5;
//    cell.layer.backgroundColor = [[UIColor whiteColor]CGColor];
    
    [self initContentCell:cell];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //通知代理
    [_gridTableDelegate selectedCell:indexPath.row];
}

-(void)initTitleCell{
    
}

-(void)initContentCell:(UITableViewCell *)cell{
    CGFloat cell_x      = cell.frame.origin.x;
    CGFloat cell_y      = cell.frame.origin.y;
    CGFloat cell_width  = cell.frame.size.width;
    CGFloat cell_height = cell.frame.size.height;
    NSLog(@"cell x:%f,y:%f,width:%f,height:%f", cell_x,cell_y,cell_width,cell_height);
    
    UILabel *channel = [[UILabel alloc]initWithFrame:CGRectMake(cell_x, cell_y, 0.2*cell_width, cell_height)];
    channel.layer.borderWidth = 0.5;
    channel.text = @"channel";
    channel.font = [UIFont systemFontOfSize:10];
    channel.textAlignment = UITextAlignmentCenter;
    [cell addSubview:channel];
}


@end
