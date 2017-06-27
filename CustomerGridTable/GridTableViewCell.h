//
//  GridTableViewCell.h
//  CustomerGridTable
//
//  Created by pccw on 22/6/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GridTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *text_view_one;
@property (weak, nonatomic) IBOutlet UILabel *text_view_two;
@property (weak, nonatomic) IBOutlet UILabel *text_view_three;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end
