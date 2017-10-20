//
//  InsertionSort.m
//  Data Structures & Algorithms
//
//  Created by Vikram Singh on 06/10/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "InsertionSort.h"
//AVERAGE AND WORST CASE COMPLEXITY = 0(nSquare)
@implementation InsertionSort
+(NSArray *)insertionSort:(NSArray *)array{
    NSMutableArray *sortedArray = [array mutableCopy];
    int valueToInsert;
    int holeposition;
    //4,6,3,2,1,9,7
    int i;
    for (i = 1; i<sortedArray.count; i++) {
        valueToInsert = [sortedArray[i] intValue];
        holeposition = i;
        while (holeposition>0 && [sortedArray[i-1] intValue] > valueToInsert) {
            sortedArray[holeposition] = sortedArray[holeposition-1];
            holeposition--;
            NSLog(@"item moved = %@",sortedArray[holeposition]);
        }
        if (holeposition!= i) {
            sortedArray[holeposition]=[NSNumber numberWithInt:valueToInsert];
            NSLog(@"item Inserted : %@ at position : %d",[NSNumber numberWithInt:valueToInsert],holeposition);
        }
        
        
    }
    
    return sortedArray;
}

 
@end
