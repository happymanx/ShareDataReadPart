//
//  HTMainViewController.m
//  ShareDataReadPart
//
//  Created by Jason on 2014/12/22.
//  Copyright (c) 2014年 Zoaks. All rights reserved.
//

#import "HTMainViewController.h"

@interface HTMainViewController ()

@end

@implementation HTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 共享方法一：檔案共享～讀取
    NSFileManager *fm = [NSFileManager defaultManager];
    NSURL *baseURL = [fm containerURLForSecurityApplicationGroupIdentifier:@"group.happy.share"];
    NSURL *url = [[NSURL alloc] initWithString:@"HappyShare.txt" relativeToURL:baseURL];
    NSString *string1 = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"string1: %@", string1);
    
    // 共享方法二：系統預設的plist檔資料共享～讀取
    NSUserDefaults *ud = [[NSUserDefaults alloc] initWithSuiteName:@"group.happy.share"];
    NSString *string2 = [ud valueForKey:@"HappyShare"];
    NSLog(@"string2: %@", string2);
}

@end
