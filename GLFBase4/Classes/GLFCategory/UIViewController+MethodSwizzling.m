//
//  UIViewController+MethodSwizzling.m
//  demo
//
//  Created by Levan on 2022/4/14.
//  Copyright © 2022 甘淋方. All rights reserved.
//

#import "UIViewController+MethodSwizzling.h"
#import <objc/runtime.h>

@implementation UIViewController (MethodSwizzling)

+ (void)load{
    Method viewDidLoad = class_getInstanceMethod(self, @selector(viewDidLoad));
    Method glf_viewDidLoad = class_getInstanceMethod(self, @selector(glf_viewDidLoad));
    method_exchangeImplementations(viewDidLoad, glf_viewDidLoad);
}

- (void)glf_viewDidLoad{
    NSLog(@"*****这个页面载入了，用MethodSwizzling打个日志*****");
}

@end
