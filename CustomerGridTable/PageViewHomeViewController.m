//
//  PageViewHomeViewController.m
//  CustomerGridTable
//
//  Created by pccw on 5/7/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import "PageViewHomeViewController.h"
#import "PageViewController.h"

@interface PageViewHomeViewController ()

@end

@implementation PageViewHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clickedToPageView:(UIButton *)sender {
    UIStoryboard *storboard = self.storyboard;
    PageViewController *page_vc = [storboard instantiateViewControllerWithIdentifier:@"page_view_vc"];
    [self presentViewController:page_vc animated:YES completion:nil];
}


@end
