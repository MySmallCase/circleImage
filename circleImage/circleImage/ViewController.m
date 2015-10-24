//
//  ViewController.m
//  circleImage
//
//  Created by MyMac on 15/10/24.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(100, 100, 100, 100);
    imageView.backgroundColor = [UIColor redColor];
//    imageView.layer.cornerRadius = 50.0f;
//    imageView.layer.masksToBounds = YES;
//    [imageView setRectHeader:@"http://img0.bdstatic.com/img/image/shouye/sheying1023.jpg" placeholder:@""];
    [imageView setCircleHeader:@"http://img0.bdstatic.com/img/image/shouye/sheying1023.jpg" placeholder:nil];
    [self.view addSubview:imageView];
    
    
    
}



@end
