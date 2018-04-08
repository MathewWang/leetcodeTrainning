//
//  main.m
//  LeetCodeTrainning
//
//  Created by mathewwang on 2018/4/8.
//  Copyright © 2018年 mathewwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TwoSum.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *resultA = [TwoSum twoSumA:@[@6,@3,@9,@4,@5,@10,@7,@8] target:8];
        NSArray *resultB = [TwoSum twoSumB:@[@6,@3,@9,@4,@5,@10,@7,@8] target:8];
        NSArray *resultC = [TwoSum twoSumC:@[@6,@3,@9,@4,@5,@10,@7,@8] target:8];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
