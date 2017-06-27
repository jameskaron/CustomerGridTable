//
//  GridTableViewCell.m
//  CustomerGridTable
//
//  Created by pccw on 22/6/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import "GridTableViewCell.h"

@implementation GridTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    _text_view_one.layer.borderWidth = 0.5;
    _text_view_two.layer.borderWidth = 0.5;
    _text_view_three.layer.borderWidth = 0.5;
    _text_view_one.textAlignment = NSTextAlignmentCenter;
    _text_view_two.textAlignment = NSTextAlignmentCenter;
    _text_view_three.textAlignment = NSTextAlignmentCenter;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
