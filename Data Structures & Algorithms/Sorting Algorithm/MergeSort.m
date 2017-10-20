//
//  MergeSort.m
//  Data Structures & Algorithms
//
//  Created by Vikram Singh on 06/10/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort
-(NSArray *)MergeSort:(NSArray *)array{
    
    if (array.count<=1) {
        return array;
    }else{
    int min = 0;
    int max = (int)array.count;
    int mid = (max-min)/2;
    int count = max-mid;
    NSArray *left = [array subarrayWithRange:NSMakeRange(min, mid)];
    NSArray *right = [array subarrayWithRange:NSMakeRange(mid, count)];
//    NSLog(@"mergeSort left = %@",left);
//    NSLog(@"mergeSort right = %@",right);
    return  [self MergeLeftArray:[self MergeSort:left] andRightArray:[self MergeSort:right]];
    }
}

-(NSArray *)MergeLeftArray:(NSArray *)leftArray andRightArray:(NSArray *)rightArray{
    NSMutableArray *mergeArray =[NSMutableArray new];
    NSMutableArray *left = [leftArray mutableCopy];
    NSMutableArray *right = [rightArray mutableCopy];
//    NSLog(@"merging left %@ and %@",left,right);
    while (left.count>0 && right.count>0) {
        if ([left[0] intValue]< [right[0] intValue]) {
            
            [mergeArray addObject:left.firstObject];
            [left removeObjectAtIndex:0];
        } else{
            [mergeArray addObject:right.firstObject];
            [right removeObjectAtIndex:0];
        }
//        NSLog(@"meregArray = %@",mergeArray);
    }
    if (left.count>0) {
//        NSLog(@"left array leftover = %@",left);
        [mergeArray addObjectsFromArray:left];
        
    }
    if (right.count>0) {
//        NSLog(@"right array leftover = %@",right);
        [mergeArray addObjectsFromArray:right];
    }
//    NSLog(@"merge array return= %@",mergeArray);
    return mergeArray;
}
@end
