//
//  ViewController.m
//  UIBezierPathDemo
//
//  Created by JuLiaoyuan on 2016/11/1.
//  Copyright © 2016年 J.L.Y. All rights reserved.
//

#import "ViewController.h"
#import "LYDisplayViewController.h"
#import "LYRectangle.h"
#import "LYCornerRadius.h"
#import "LYAnomaly.h"
#import "LYArc.h"

static NSString * const cellID = @"menuListCell";

static NSString * const cellTitle = @"title";
static NSString * const cellTargetView = @"action";

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *menuList;

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIBizerPathDemo";
    self.dataSource = @[@{cellTitle:@"各种方",cellTargetView:[LYRectangle new]},
                        @{cellTitle:@"各种圆",cellTargetView:[LYCornerRadius new]},
                        @{cellTitle:@"不规则",cellTargetView:[LYAnomaly new]},
                        @{cellTitle:@"圆弧",cellTargetView:[LYArc new]}];
    [self.view addSubview:self.menuList];
}

- (UITableView *)menuList {
    if (!_menuList) {
        _menuList = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _menuList.delegate = self;
        _menuList.dataSource = self;
        _menuList.rowHeight = 50.f;
        _menuList.tableFooterView = [UIView new];
        [_menuList registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    }
    return _menuList;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLabel.textColor = [UIColor colorWithRed:95 / 255.0 green:95 / 255.0 blue:95 / 255.0 alpha:1.f];
    cell.textLabel.text = [self.dataSource[indexPath.row] objectForKey:cellTitle];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    LYDisplayViewController *display = [LYDisplayViewController new];
    display.navigationItem.title = [self.dataSource[indexPath.row] objectForKey:cellTitle];
    display.displayView = [self.dataSource[indexPath.row] objectForKey:cellTargetView];
    [self.navigationController pushViewController:display animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
