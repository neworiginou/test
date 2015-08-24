//
//  RTLButton.m
//  RTLButton
//
//  Created by Anton Bukov on 22.05.15.
//  Copyright (c) 2015 Codeless Solutions. All rights reserved.
//

#import "RTLButton.h"

@implementation RTLButton

/*- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super imageRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetWidth(frame) - self.imageEdgeInsets.right + self.imageEdgeInsets.left - frame.origin.x;
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super titleRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMinX(frame) - CGRectGetWidth([self imageRectForContentRect:contentRect]);
    return frame;
}*/



/*---当中间有间隔时，经过代码验证，有点不对-------*/
// 所以在MyButton里重新计算了下，额 下面这个完美解决,

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super imageRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetWidth(frame)  - frame.origin.x;
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super titleRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetMaxX(frame);
    return frame;
}


@end
