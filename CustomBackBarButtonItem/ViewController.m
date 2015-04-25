//
//  ViewController.m
//  CustomBackBarButtonItem
//
//  Created by qingsong on 15/4/25.
//  Copyright (c) 2015年 qingsong. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem * rightItem = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(gotoSecondVC)];
    self.navigationItem.rightBarButtonItem = rightItem;
}
- (void)gotoSecondVC
{
    SecondViewController * secondVc = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
