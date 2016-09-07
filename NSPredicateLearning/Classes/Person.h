//
//  Person.h
//  NSpredicate
//
//  Created by Chang on 16/9/7.
//  Copyright © 2016年 常露阳. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, assign) int age;
@property (nonatomic, copy) NSString *personName;
@property (nonatomic, assign) int sex;// 0 女 1 男

+ (instancetype)initWithAge:(int)age
                        sex:(int)sex
                       name:(NSString *)name;

- (instancetype)initWithAge:(int)age
                        sex:(int)sex
                       name:(NSString *)name;
@end
