//
//  LinearSearch.h
//  Data Structure and Algorithms
//
//  Created by Vikram Singh on 26/09/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface LinearSearch : NSObject
+(searchResult)searchNumber:(NSNumber*)item  inArray:(NSArray*)array;
+(searchResult)searchString:(NSString*)item  inArray:(NSArray*)array;

@end
