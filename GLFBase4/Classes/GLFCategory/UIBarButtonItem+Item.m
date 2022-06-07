//
//  UIBarButtonItem+Item.m
//  demo
//
//  Created by 甘淋方 on 2021/10/28.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)

+ (instancetype)barButtonItemWithNormalImageName:(NSString *)normalImageName withHighImageName:(NSString *)highImageName target:(id)target action:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [btn sizeToFit];
//    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

+ (instancetype)barButtonItemWithNormalImageName:(NSString *)normalImageName withSelectedImageName:(NSString *)selectedImageName target:(id)target action:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    [btn sizeToFit];
//    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

+(instancetype)backItemWithTitle:(NSString *)buttonTitle withNormalImageName:(NSString *)normalImageName withHighImageName:(NSString *)highImageName target:(id)target action:(SEL)action{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setTitle:buttonTitle forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [backBtn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    [backBtn sizeToFit];
    [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //把按钮内容往左移一点。（上左下右）
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    return [[UIBarButtonItem alloc]initWithCustomView:backBtn];
}

@end
