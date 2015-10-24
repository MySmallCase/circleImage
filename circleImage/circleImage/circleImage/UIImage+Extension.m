//
//  UIImage+Extension.m
//  circleImage
//
//  Created by MyMac on 15/10/24.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)


- (instancetype)circleImage{
    //开启图形上下文
    UIGraphicsBeginImageContext(self.size);
    
    //获得上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //矩形框
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    //添加一个圆
    CGContextAddEllipseInRect(context, rect);
    
    //裁剪
    CGContextClip(context);
    
    //往圆上画一张图片
    [self drawInRect:rect];
    
    //获取图形上下文中的图形
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    return image;
    
}

+ (instancetype)circleImageNamed:(NSString *)name{
    return [[self imageNamed:name] circleImage];
}


@end
