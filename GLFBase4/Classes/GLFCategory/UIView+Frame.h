//
//  UIView+Frame.h
//  demo
//
//  Created by 甘淋方 on 2021/10/28.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Frame)
/*
 写分类：避免跟其他开发者产生冲突，加前缀
 */
@property CGFloat glf_width;
@property CGFloat glf_height;
@property CGFloat glf_x;
@property CGFloat glf_y;

@end

NS_ASSUME_NONNULL_END
