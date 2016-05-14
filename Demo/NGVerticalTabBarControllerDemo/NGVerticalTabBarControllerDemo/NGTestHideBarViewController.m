//
//  NGTestHideBarViewController.m
//  NGVerticalTabBarControllerDemo
//
//  Created by PopLax on 5/14/16.
//  Copyright © 2016 NOUS Wissensmanagement GmbH. All rights reserved.
//

#import "NGTestHideBarViewController.h"

@interface NGTestHideBarViewController ()

@property (nonatomic, strong) UIButton *pushButton;
@property (nonatomic, strong) UILabel *pushCountLabel;

@end

@implementation NGTestHideBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"HideBottomBarTest";
    self.view.backgroundColor = [UIColor whiteColor];

    _pushCountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200.f, 30.f)];
    _pushCountLabel.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2 - 50.f);
    _pushCountLabel.textAlignment = NSTextAlignmentCenter;
    _pushCountLabel.font = [UIFont boldSystemFontOfSize:13.f];
    _pushCountLabel.backgroundColor = [UIColor whiteColor];
    _pushCountLabel.text = [NSString stringWithFormat:@"ViewControllers Count : %ld", [[self.navigationController viewControllers] count]];
    [self.view addSubview:_pushCountLabel];

    _pushButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200.f, 30.f)];
    _pushButton.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    _pushButton.backgroundColor = [UIColor darkGrayColor];
    [_pushButton setTitle:@"PushHidesBarTest" forState:UIControlStateNormal];
    [_pushButton addTarget:self action:@selector(pushButtonDidTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_pushButton];

}


#pragma mark - Button Handle


- (void)pushButtonDidTapped:(UIButton *)button
{
    NGTestHideBarViewController *viewController = [[NGTestHideBarViewController alloc] init];
    viewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:viewController animated:YES];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
