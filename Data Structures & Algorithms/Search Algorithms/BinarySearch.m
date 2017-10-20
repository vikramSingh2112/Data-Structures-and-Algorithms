//
//  BinarySearch.m
//  Data Structure and Algorithms
//
//  Created by Vikram Singh on 26/09/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "BinarySearch.h"

//mid = low + (high - low) / 2
@implementation BinarySearch
+(searchResult)searchNumber:(NSNumber*)item inArray:(NSArray*)array{
    searchResult result;
    result.found = NO;
    int low = 0;
    int high = (int)array.count-1;
    int mid;
    int x = [item intValue];
    while (low<=high) {
        mid = low + (high-low)/2;
        NSLog(@" %d  %d  %d",low,mid,high);
        if ([item isEqualToNumber:(NSNumber*)array[mid] ]) {
            result.found = YES;
            result.index = mid;
            break;
        }else{
            if (x>[array[mid] intValue]) {
                low = mid+1;
            }
            else {
                high = mid-1;
            }
        }
    }
    return result;
}
//+(searchResult)searchNumber:(NSNumber*)item inArray:(NSArray*)array{
//    searchResult result;
//    result.found = NO;
//    if (array.count==1 && ![item isEqualToNumber:array[0]]) {
//        return result;
//    }
//
//    int max = (int)array.count-1;
//    int min = 0;
//    int mid = (max-min)/2;
//    if (item>array[max] && item < array[min]) {
//        return result;
//    }
//    NSMutableArray *newArray = [NSMutableArray new];
//    if (item>array[mid]) {
//        for (int i = mid+1; i<= max; i++) {
//            [newArray addObject:array[i]];
//        }
//        NSLog(@"more new array = %@",newArray);
//       result= [self searchNumber:item inArray:newArray];
//    }
//    if (item<array[mid]) {
//        for (int i = min; i<mid; i++) {
//            [newArray addObject:array[i]];
//        }
//        NSLog(@"less new array = %@",newArray);
//        result = [self searchNumber:item inArray:newArray];
//    }
//    if (item == array[mid]) {
//        result.found = YES;
//        result.index = mid;
//    }
//    return result;
//}

+(searchResult)searchNumberWithWhileLoop:(NSNumber*)item inArray:(NSArray*)array{
    searchResult result;
    result.found = NO;
    if (array.count==1 && ![item isEqualToNumber:array[0]]) {
        return result;
    }
    
    int max = (int)array.count-1;
    int min = 0;
    int mid ;
    if (item>array[max] && item < array[min]) {
        return result;
    }
//    while ([item isEqualToNumber:array[mid]]) {
//        mid = min + (max-min)/2;
//        if (item>array[mid]) {
//            min = mid+1;
//        }
//        if (item<array[mid]) {
//            max = mid-1;
//        }
//        if (<#condition#>) {
//            <#statements#>
//        }
//    }
    do {
        mid = min + (max-min)/2;
        if (item>array[mid]) {
            min = mid+1;
        }
        else if (item<array[mid]) {
            max = mid-1;
        }
        else{
            NSLog(@"number not found");
            break;
        }
    } while ([item isEqualToNumber:array[mid]]);
    return result;
}
@end
