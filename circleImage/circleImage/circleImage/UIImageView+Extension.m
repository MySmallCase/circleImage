
//
//  UIImageView+Extension.m
//  circleImage
//
//  Created by MyMac on 15/10/24.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "UIImageView+Extension.h"
#import "UIImage+Extension.m"
#import <UIImageView+WebCache.h>

#define WeakObj(o) __weak typeof(o) o##Weak = o;


@implementation UIImageView (Extension)

- (void)setRectHeader:(NSString *)url placeholder:(NSString *)placeholderName{
//    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:[UIImage imageNamed:placeholderName]];
    [self sd_setImageWithURL:[NSURL URLWithString:url]];
}

- (void)setCircleHeader:(NSString *)url placeholder:(NSString *)placeholderName{
    UIImage *placeholder = [[UIImage imageNamed:placeholderName] circleImage];
    
    WeakObj(self);
    
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        if (image == nil) return;
        
        selfWeak.image = [image circleImage];
        
    }];
}

@end
