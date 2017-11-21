//
//  PageViewController.m
//  CustomerGridTable
//
//  Created by pccw on 5/7/2017.
//  Copyright © 2017 pccw. All rights reserved.
//

#import "PageViewController.h"
#import "PageOneViewController.h"

@interface PageViewController ()

@property (nonatomic) NSArray *viewControllerArray;

@property (nonatomic) NSInteger index;

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = self;
    
    UIStoryboard *storboard = self.storyboard;
    PageOneViewController *page_one_vc = [storboard instantiateViewControllerWithIdentifier:@"page_one_vc"];
    UIViewController *page_two_vc = [storboard instantiateViewControllerWithIdentifier:@"page_two_vc"];
    UIViewController *page_three_vc = [storboard instantiateViewControllerWithIdentifier:@"page_three_vc"];
    _viewControllerArray = @[page_one_vc];
    
    [self setViewControllers:_viewControllerArray direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    UIViewController *now_vc = _viewControllerArray[0];
    [self addChildViewController:now_vc];
    [self.view addSubview:now_vc.view];
    
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSLog(@"before index:%ld",(long)_index);
    
    if (_index > 0) {
        return _viewControllerArray[_index--];
    }else{
        return _viewControllerArray[_index];
    }
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSLog(@"After index:%ld",(long)_index);
    
    if (_index < 2) {
        return _viewControllerArray[_index++];
    }else{
        return _viewControllerArray[_index];
    }
    
}
@end
