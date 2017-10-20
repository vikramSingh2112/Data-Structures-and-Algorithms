//
//  LinearSearch.m
//  Data Structure and Algorithms
//
//  Created by Vikram Singh on 26/09/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "LinearSearch.h"

@implementation LinearSearch

+(searchResult)searchNumber:(NSNumber*)item inArray:(NSArray *)array{
    searchResult searchResult;
    searchResult.found = NO;
    for (int i =0; i<array.count; i++) {
        if ([array[i] isEqualToNumber:item]) {
            searchResult.index= i;
            searchResult.found = YES;
            break;
        }
    }
    
    return searchResult;
}

+(searchResult)searchString:(NSString*)item inArray:(NSArray *)array{
    searchResult searchResult;
    searchResult.found = NO;
    for (int i =0; i<array.count; i++) {
        if (array[i] ==item) {
            searchResult.index= i;
            searchResult.found = YES;
            break;
        }
    }
    
    return searchResult;
}
@end
