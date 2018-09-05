//
//  ViewController.m
//  Algorithm
//
//  Created by EISOO on 2018/9/4.
//  Copyright © 2018年 eisoo. All rights reserved.
//

#import "ViewController.h"
#import "FastSort.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FastSort * fast = [[FastSort alloc]init];
    [fast quickSortWithArray:@[@1,@4,@2,@6,@0,@5]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
