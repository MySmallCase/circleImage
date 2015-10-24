//
//  UIImageView+Extension.h
//  circleImage
//
//  Created by MyMac on 15/10/24.
//  Copyright © 2015年 MyMac. All rights reserved.
//  将图片改为圆角

#import <UIKit/UIKit.h>

@interface UIImageView (Extension)

/**
 * 设置圆形头像
 */
- (void)setRectHeader:(NSString *)url placeholder:(NSString *)placeholderName;

/**
 * 设置矩形头像
 */
- (void)setCircleHeader:(NSString *)url placeholder:(NSString *)placeholderName;

@end
