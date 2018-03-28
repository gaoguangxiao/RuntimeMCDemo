//
//  CFURL.m
//  ReleaseDemo
//
//  Created by gaoguangxiao on 2018/3/27.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import "CFURL.h"

@implementation CFURL
+(instancetype)CFURLWithString:(NSString *)string{
    CFURL *url = [super URLWithString:string];
    if (url == nil) {
        NSLog(@"url为空");
    }
    return url;
}

@end
