//
//  MyButton.m
//  demo ou
//
//  Created by ouyq on 15/5/23.
//  Copyright (c) 2015年 iAround. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton


- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super imageRectForContentRect:contentRect];
    NSLog(@"imageFrame:%@",NSStringFromCGRect(frame));
    NSLog(@"imageEdgeInsets:%@",NSStringFromUIEdgeInsets(self.imageEdgeInsets));
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super titleRectForContentRect:contentRect];
    NSLog(@"imageFrame:%@",NSStringFromCGRect(frame));
    NSLog(@"imageEdgeInsets:%@",NSStringFromUIEdgeInsets(self.titleEdgeInsets));
    NSLog(@"imageWidth:%f",CGRectGetWidth([self imageRectForContentRect:contentRect]));
    NSLog(@"CGRectGetMinX(frame)= %f",CGRectGetMinX(frame));
//    frame.origin.x = CGRectGetMinX(frame) - CGRectGetWidth([self imageRectForContentRect:contentRect]);
    return frame;
}


/*------   下面是我进行的计算后的代码，文字在前面，图片在后面，中间隔了一定像素--------*/
/*- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super imageRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMaxX(contentRect) - CGRectGetWidth(frame)- frame.origin.x;
    return frame;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect frame = [super titleRectForContentRect:contentRect];
    frame.origin.x = CGRectGetMinX(frame) - CGRectGetWidth([self imageRectForContentRect:contentRect]) + self.titleEdgeInsets.right - self.titleEdgeInsets.left;
    return frame;
}*/

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
