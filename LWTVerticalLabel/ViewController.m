//
//  ViewController.m
//  LWTVerticalLabel
//
//  Created by liaowentao on 17/9/25.
//  Copyright © 2017年 LWT. All rights reserved.
//

#import "ViewController.h"
#import "VerticalLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    VerticalLabel *label = [[VerticalLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.verticalAlignment = VeriticalTextAlignmentBottom;
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"我是人";
    [self.view addSubview:label];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
