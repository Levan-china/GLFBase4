//
//  UIView+Frame.m
//  demo
//
//  Created by 甘淋方 on 2021/10/28.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (void)setGlf_width:(CGFloat)glf_width{
    CGRect rect = self.frame;
    rect.size.width = glf_width;
    self.frame = rect;
}

- (CGFloat)glf_width{
    return self.frame.size.width;
}

- (void)setGlf_height:(CGFloat)glf_height{
    CGRect rect = self.frame;
    rect.size.height = glf_height;
    self.frame = rect;
}

- (CGFloat)glf_height{
    return self.frame.size.height;
}

- (void)setGlf_x:(CGFloat)glf_x{
    CGRect rect = self.frame;
    rect.origin.x = glf_x;
    self.frame = rect;
}

-(CGFloat)glf_x{
    return self.frame.origin.x;
}

-(void)setGlf_y:(CGFloat)glf_y{
    CGRect rect = self.frame;
    rect.origin.y = glf_y;
    self.frame = rect;
}

- (CGFloat)glf_y{
    return self.frame.origin.y;
}

@end
