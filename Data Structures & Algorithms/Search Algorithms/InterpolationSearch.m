//
//  InterpolationSearch.m
//  Data Structure and Algorithms
//
//  Created by Vikram Singh on 27/09/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "InterpolationSearch.h"
//mid = Lo + ((Hi - Lo) / (A[Hi] - A[Lo])) * (X - A[Lo])
@implementation InterpolationSearch
+(searchResult)searchNumber:(NSNumber*)item inArray:(NSArray*)array{
    searchResult result;
    result.found = NO;
    int low = 0;
    int high = (int)array.count-1;
    int mid;
    int x = [item intValue];
    while (low<=high) {
        mid = low +((high-low)/([array[high] intValue]-[array[low] intValue]))*(x-[array[low] intValue]);
        
        if (x == [array[mid] intValue]) {
            result.found = YES;
            result.index = mid;
            break;
        }else{
            if (x<[array[mid] intValue]) {
                high = mid-1;
            }
            if (x>[array[mid] intValue]) {
                low = mid+1;
            }
        }
    }
    
    return result;
}
@end
