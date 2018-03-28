//
//  ViewController.m
//  RuntimeMCDemo
//
//  Created by gaoguangxiao on 2018/3/28.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import "ViewController.h"
#import "NSURL+url.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"http"];
    NSLog(@"%@",url);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
