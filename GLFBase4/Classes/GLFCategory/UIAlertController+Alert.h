//
//  UIAlertController+Alert.h
//  demo
//
//  Created by 甘淋方 on 2021/10/28.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (Alert)

//写个快速调用的弹窗
+ (instancetype)showAlerttarget:(id)target withTitle:(NSString *)title withMessage:(NSString *)message withDismissTime:(NSTimeInterval)delay;

@end

NS_ASSUME_NONNULL_END
