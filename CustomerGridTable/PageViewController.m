//
//  PageViewController.m
//  CustomerGridTable
//
//  Created by pccw on 5/7/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController ()

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    
    UIStoryboard *storboard = self.storyboard;
    PageViewController *page_vc = [storboard instantiateViewControllerWithIdentifier:@"page_view_vc"];
    
    return page_vc;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    
    UIStoryboard *storboard = self.storyboard;
    PageViewController *page_vc = [storboard instantiateViewControllerWithIdentifier:@"page_view_vc"];
    
    return page_vc;
    
}
@end
