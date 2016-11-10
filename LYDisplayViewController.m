//
//  LYDisplayViewController.m
//  UIBezierPathDemo
//
//  Created by JuLiaoyuan on 2016/11/7.
//  Copyright © 2016年 J.L.Y. All rights reserved.
//

#import "LYDisplayViewController.h"

@interface LYDisplayViewController ()

@end

@implementation LYDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.displayView.frame = CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64);
    [self.view addSubview:self.displayView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
