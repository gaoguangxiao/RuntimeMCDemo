//
//  NSURL+url.m
//  ReleaseDemo
//
//  Created by gaoguangxiao on 2018/3/27.
//  Copyright © 2018年 gaoguangxiao. All rights reserved.
//

#import "NSURL+url.h"
#import <objc/runtime.h>
@implementation NSURL (url)
+(void)load{
    //最早的方法，比main还早
    NSLog(@"load");
    //1.拿到两个Method
    //2.进行方法交换
    Method m1 = class_getClassMethod([NSURL class], @selector(URLWithString:));
    Method m2 = class_getClassMethod([NSURL class], @selector(CF_URLWithStr:));
    //利用runtime进行方法的交换
    method_exchangeImplementations(m1, m2);
}


+(instancetype)CF_URLWithStr:(NSString *)URLString{
    //交换了两个方法
    NSURL *url = [NSURL CF_URLWithStr:URLString];//注意这里不能再调用系统的方法
    if (!url) {
        NSLog(@"url为空");
    }
    return url;
}

@end
