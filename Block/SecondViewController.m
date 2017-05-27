//
//  SecondViewController.m
//  Block
//
//  Created by xiaoshunliang on 2017/5/27.
//  Copyright © 2017年 bodaokeji. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()<ViewControllerDelagete>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 100, 300, 50);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"点我返回上一个页面" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];

}
- (void)btnClicked{
    self.bolck(@"第一个参数", @"第二个参数");
    
    if ([self.delagete respondsToSelector:@selector(testDelagete:)]) {
        [self.delagete testDelagete:@"我是代理传递的值"];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
