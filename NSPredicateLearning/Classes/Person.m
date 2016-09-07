//
//  Person.m
//  NSpredicate
//
//  Created by Chang on 16/9/7.
//  Copyright © 2016年 常露阳. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)initWithAge:(int)age
                        sex:(int)sex
                       name:(NSString *)name {
    return [[self alloc] initWithAge:age sex:sex name:name];
}

- (instancetype)initWithAge:(int)age
                        sex:(int)sex
                       name:(NSString *)name {
    if (self = [super init]) {
        self.age = age;
        self.sex = sex;
        self.personName = name;
    }
    return self;
    
}
- (NSString *)description {
    return [NSString stringWithFormat:@"name : %@, age : %d, sex : %d", self.personName, self.age, self.sex];
}
@end
