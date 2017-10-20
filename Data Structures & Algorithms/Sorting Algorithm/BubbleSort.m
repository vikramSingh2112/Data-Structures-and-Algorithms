//
//  BubbleSort.m
//  Data Structures & Algorithms
//
//  Created by Vikram Singh on 02/10/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort
-(NSArray *)bubbleSort:(NSArray *)array{
    
    NSMutableArray *sortedArray = [array mutableCopy];
    
    for (int i = 0; i < sortedArray.count-1; ++i) {
        for (int j = 0; j<sortedArray.count-1; ++j) {
            if ([sortedArray[j] doubleValue]>[sortedArray[j+1] doubleValue]) {
                
                [sortedArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                NSLog(@"%@",sortedArray);
            }
        }
        
        
    }
    return  sortedArray;
}
@end
