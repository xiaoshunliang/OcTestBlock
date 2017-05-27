//
//  ViewController.m
//  Block
//
//  Created by xiaoshunliang on 2017/5/27.
//  Copyright © 2017年 bodaokeji. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<ViewControllerDelagete>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 100, 300, 50);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"点我进入下一个页面" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)btnClicked{
    SecondViewController *vc = [[SecondViewController alloc]init];
    
    vc.delagete = self;
    
    vc.bolck = ^(NSString *str1,NSString *str2){
        NSLog(@"%@==%@",str1,str2);
    };
    
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)testDelagete:(NSString *)str{
    NSLog(@"%@",str);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
