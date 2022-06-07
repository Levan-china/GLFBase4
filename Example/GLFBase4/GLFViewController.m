//
//  GLFViewController.m
//  GLFBase4
//
//  Created by 291828952@qq.com on 06/07/2022.
//  Copyright (c) 2022 291828952@qq.com. All rights reserved.
//

#import "GLFViewController.h"
#import "UIAlertController+Alert.h""

@interface GLFViewController ()

@end

@implementation GLFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [UIAlertController showAlerttarget:self withTitle:@"测试组件化" withMessage:@"测试成功" withDismissTime:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
