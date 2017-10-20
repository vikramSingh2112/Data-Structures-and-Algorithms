//
//  SelectionSort.m
//  Data Structures & Algorithms
//
//  Created by Vikram Singh on 06/10/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "SelectionSort.h"
//AVERAGE AND WORST CASE COMPLEXITY = 0(nSquare)
@implementation SelectionSort
+(NSArray *)selectionSort:(NSArray *)array{
    NSMutableArray *sortedArray = [array mutableCopy];
    int indexOfMinValue;
    int i,j;
    for (i =0; i<sortedArray.count-1; i++) {
        indexOfMinValue = i;
        for (j=i+1; j<sortedArray.count; j++) {
            if ([sortedArray[j] intValue]<[sortedArray[indexOfMinValue] intValue]) {
                NSLog(@"%@ is less then %@",sortedArray[j],sortedArray[indexOfMinValue]);
                indexOfMinValue = j;
                
            }
        }
        if (indexOfMinValue!=i) {
            NSLog(@"swapped %@ with %@",sortedArray[i],sortedArray[indexOfMinValue]);
            NSNumber *temp = sortedArray[i];
            sortedArray[i] = sortedArray[indexOfMinValue];
            sortedArray[indexOfMinValue] = temp;
//            NSLog(@"swapped %@ with %@",sortedArray[i],sortedArray[indexOfMinValue]);
        }
    }
    
    return sortedArray;
}
@end
