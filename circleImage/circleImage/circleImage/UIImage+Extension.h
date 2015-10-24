//
//  UIImage+Extension.h
//  circleImage
//
//  Created by MyMac on 15/10/24.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 * 返回一张圆形图片
 */
- (instancetype)circleImage;

/**
 * 返回一张圆形图片
 */
+ (instancetype)circleImageNamed:(NSString *)name;

@end
