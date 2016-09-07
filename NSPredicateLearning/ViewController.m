//
//  ViewController.m
//  NSPredicateLearning
//
//  Created by Chang on 16/9/7.
//  Copyright © 2016年 常露阳. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p1 = [Person initWithAge:15 sex:1 name:@"张三"];
    Person *p2 = [Person initWithAge:16 sex:1 name:@"李四"];
    Person *p3 = [Person initWithAge:17 sex:0 name:@"翠花"];
    Person *p4 = [Person initWithAge:18 sex:1 name:@"Tom"];
    Person *p5 = [Person initWithAge:19 sex:0 name:@"cat"];
    
    NSArray *sourceArray = @[p1, p2, p3, p4, p5];
    
    // 搜索名字里有`三`的人
    // tips:用谓词搜索的时候，属性名字的占位符是`%K`,这里的K是大写的
    //
    NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"%K contains [cd] '三'", @"personName"];
    NSArray *ret1 = [sourceArray filteredArrayUsingPredicate:predicate1];
    NSLog(@"%@", ret1);
    
    // 搜索性别为男的人
    NSPredicate *predicate2 = [NSPredicate predicateWithFormat:@"%K = 1", @"sex"];
    NSArray *ret2 = [sourceArray filteredArrayUsingPredicate:predicate2];
    NSLog(@"%@", ret2);
    
    // 搜索年龄>15 < 19的人
    NSPredicate *predicate3 = [NSPredicate predicateWithFormat:@"%K > 15 && %K < 19", @"age", @"age"];
    NSArray *ret3 = [sourceArray filteredArrayUsingPredicate:predicate3];
    NSLog(@"%@", ret3);
}



@end
