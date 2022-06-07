//
//  UIImage+Image.h
//  demo
//
//  Created by 甘淋方 on 2021/10/26.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Image)

+ (instancetype)imageOriginalWithName:(NSString *)imageName;

+ (instancetype)imageWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
