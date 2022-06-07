//
//  UIBarButtonItem+Item.h
//  demo
//
//  Created by 甘淋方 on 2021/10/28.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (Item)

//提供一个快速创建的方法。看外面需要怎么用，就怎么创建
//高亮
+ (instancetype)barButtonItemWithNormalImageName:(NSString *)normalImageName withHighImageName:(NSString *)highImageName target:(id)target action:(SEL)action;
//选中
+ (instancetype)barButtonItemWithNormalImageName:(NSString *)normalImageName withSelectedImageName:(NSString *)selectedImageName target:(id)target action:(SEL)action;
//返回
+ (instancetype)backItemWithTitle:(NSString *)buttonTitle withNormalImageName:(NSString *)normalImageName withHighImageName:(NSString *)highImageName target:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
