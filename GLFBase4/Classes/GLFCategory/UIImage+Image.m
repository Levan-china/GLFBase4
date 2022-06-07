//
//  UIImage+Image.m
//  demo
//
//  Created by 甘淋方 on 2021/10/26.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)

+ (instancetype)imageOriginalWithName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)imageWithColor:(UIColor *)color{
    //创建图片上下文
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    //获取当前上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置需要填充的颜色
    CGContextSetFillColorWithColor(context, [color CGColor]);
    //指定填充的范围
    CGContextFillRect(context, rect);
    //从当前图片上下文生成图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //退出当前ImageContext堆栈，即结束当前图片上下文
    UIGraphicsEndImageContext();

    return image;
}

@end
