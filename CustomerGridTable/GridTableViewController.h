//
//  GridTableViewController.h
//  CustomerGridTable
//
//  Created by pccw on 15/6/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GridTableDelegate <NSObject>
/**
 * 选中cell的代理事件
 */
- (void) selectedCell:(NSInteger)index;

@end

@interface GridTableViewController : UITableViewController

@property (nonatomic) NSArray *dataSource;

@property (nonatomic,weak) id<GridTableDelegate>gridTableDelegate;

@end
