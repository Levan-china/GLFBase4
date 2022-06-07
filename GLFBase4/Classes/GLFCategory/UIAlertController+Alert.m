//
//  UIAlertController+Alert.m
//  demo
//
//  Created by 甘淋方 on 2021/10/28.
//  Copyright © 2021 甘淋方. All rights reserved.
//

#import "UIAlertController+Alert.h"

@implementation UIAlertController (Alert)

+ (instancetype)showAlerttarget:(id)target withTitle:(NSString *)title withMessage:(NSString *)message withDismissTime:(NSTimeInterval)delay{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"我有图片" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        GLFLog(@"安装图片");
//    }];
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"我也没有图片" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//        GLFLog(@"走了走了");
//    }];
//    [alert addAction:defaultAction];
//    [alert addAction:cancelAction];
    [target presentViewController:alert animated:YES completion:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [alert dismissViewControllerAnimated:YES completion:nil];
    });
    
    return alert;
}

- (void)dealloc{
    NSLog(@"%s", __func__);
}

#pragma mark - 附加知识点
//延时执行
- (void)delay{
    NSLog(@"---start----");
    //方法一：
//    [self performSelector:@selector(test) withObject:nil afterDelay:2.0];
    //方法二：repeats是否重复调用
//    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(test) userInfo:nil repeats:NO];
    
    //方法三
    
    /*
     参数一：DISPATCH_TIME_NOW 从现在开始计算时间
     参数二：延迟的时间 2.0  GCD时间：纳秒
     参数三：队列。这个方法的强大之处就是可以控制它在主线程还是子线程执行
           主线程这里就传主队列：dispatch_get_main_queue()
           子线程就传全局队列：dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0)
     */
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"%@", [NSThread currentThread]);
    });
}

//一次性代码。不管屏幕点多少次，这里的代码只执行一次。
//不能放在懒加载里面。不然创建第二个对象以及后面的对象的时候，就不会执行那段代码
- (void)once{
    //用static修饰，不可变量
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSLog(@"----once-----%@", [NSThread currentThread]);
    });
}

- (void)test{
    NSLog(@"%@", [NSThread currentThread]);
}

@end
