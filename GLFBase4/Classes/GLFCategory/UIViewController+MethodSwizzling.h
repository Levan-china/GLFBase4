//
//  UIViewController+MethodSwizzling.h
//  demo
//
//  Created by Levan on 2022/4/14.
//  Copyright © 2022 甘淋方. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (MethodSwizzling)

-(void)glf_viewDidLoad;

@end

NS_ASSUME_NONNULL_END
