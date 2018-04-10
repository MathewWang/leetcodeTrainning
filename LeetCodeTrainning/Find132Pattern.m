//
//  Find132Pattern.m
//  LeetCodeTrainning
//
//  Created by mathewwang on 2018/4/10.
//  Copyright © 2018年 mathewwang. All rights reserved.
//

#import "Find132Pattern.h"

@implementation Find132Pattern
//O(n^3)
+(NSArray *)find132pattern:(NSArray *)values{
    NSMutableArray *result = [NSMutableArray array];
    for (int i = 0; i < (values.count - 2); i++) {
        for (int j = i+1; j<(values.count- 1); j++) {
            for (int z = j+1; z < values.count; z++) {
                NSInteger a = [values[i] integerValue];
                NSInteger b = [values[j] integerValue];
                NSInteger c = [values[z] integerValue];
                if (a < c && c < b) {
                    [result addObject:@[@(a),@(b),@(c)]];
                }
            }
        }
    }
    return [result copy];
}

@end
