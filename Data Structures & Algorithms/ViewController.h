//
//  ViewController.h
//  Data Structures & Algorithms
//
//  Created by Vikram Singh on 30/09/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
typedef struct searchResult{
    BOOL found;
    int index;
} searchResult;
@property(nonatomic,strong)NSArray *unSortedArray;
@property(nonatomic, strong)NSArray *sortedArray;
@property (nonatomic, strong)NSArray *stringArray;
@end

