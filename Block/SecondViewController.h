//
//  SecondViewController.h
//  Block
//
//  Created by xiaoshunliang on 2017/5/27.
//  Copyright © 2017年 bodaokeji. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^block)(NSString *str1,NSString *str2);
@protocol ViewControllerDelagete

@optional
- (void)testDelagete:(NSString *)str;
@end

@interface SecondViewController : UIViewController
@property (copy, nonatomic) block bolck;
@property (assign, nonatomic) id delagete;
@end
