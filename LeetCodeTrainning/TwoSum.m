//
//  TwoSum.m
//  LeetCodeTrainning
//
//  Created by mathewwang on 2018/4/8.
//  Copyright © 2018年 mathewwang. All rights reserved.
//

#import "TwoSum.h"

@implementation TwoSum

//所有整数 O(n!)
+ (NSArray *)twoSumA:(NSArray *)nums target:(NSInteger)target{
    for (int i = 0; i< [nums count]; i++) {
        for (int j = (i+1); j < [nums count]; j++) {
            if (([nums[i] integerValue] + [nums[j] integerValue]) == target) {
                return @[@(i),@(j)];
            }
        }
    }
    
    return nil;
}

//只有正整数(不包含0)  O(m!+n) m<=n
+ (NSArray *)twoSumB:(NSArray *)nums target:(NSInteger)target{
    
    if (target <=1) { //最小的正整数
        return nil;
    }
    
    NSMutableArray *newNums = [NSMutableArray array];
    //先排除掉所有大于target的数 O(n)
    for (int i = 0; i < [nums count]; i++) {
        if ([nums[i] integerValue] < target) {
            [newNums addObject:@[@(i),nums[i]]];
        }
    }
    
    //O(m!)
    for (int i = 0; i < [newNums count]; i++) {
        for (int j = (i+1); j < [newNums count]; j++) {
            if (([newNums[i][1] integerValue] + [newNums[j][1] integerValue]) == target) {
                return @[newNums[i][0],newNums[j][0]];
            }
        }
    }
    
    return nil;
}

//所有整数 O(m!+2n) m<=n
+ (NSArray *)twoSumC:(NSArray *)nums target:(NSInteger)target{
    //先找到最小值 O(n)
    NSInteger minValue = 0;
    for (int i = 0; i < [nums count]; i++) {
        if (minValue > [nums[i] integerValue]) {
            minValue = [nums[i] integerValue];
        }
    }
    
    if (target <= minValue) { //不大于最小数时
        return nil;
    }
    
    //算出需要排除的最大值
    NSInteger maxValue = target - minValue;
    //先排除掉所有大于maxValue的数 O(n)
    NSMutableArray *newNums = [NSMutableArray array];
    for (int i = 0; i < [nums count]; i++) {
        if ([nums[i] integerValue] <= maxValue) {
            [newNums addObject:@[@(i),nums[i]]];
        }
    }
    
    //O(m!)
    for (int i = 0; i < [newNums count]; i++) {
        for (int j = (i+1); j < [newNums count]; j++) {
            if (([newNums[i][1] integerValue] + [newNums[j][1] integerValue]) == target) {
                return @[newNums[i][0],newNums[j][0]];
            }
        }
    }
    
    return nil;
}

@end
