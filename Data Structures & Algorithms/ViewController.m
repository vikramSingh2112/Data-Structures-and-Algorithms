//
//  ViewController.m
//  Data Structures & Algorithms
//
//  Created by Vikram Singh on 30/09/17.
//  Copyright © 2017 Vikram's Macbook. All rights reserved.
//

#import "ViewController.h"
//#import "LinearSearch.h"
//#import "BinarySearch.h"
//#import "InterpolationSearch.h"
#import "MergeSort.h"

@interface ViewController ()<UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _sortedArray = [self genrateRandomArray];//@[@1, @2, @3, @4, @5, @6,@7,@8,@9,@10];
//    NSLog(@"random arr = %@",_sortedArray);
//    _stringArray = @[@"abc",@"def",@"ghi",@"jkl"];
//
//    MergeSort *MS = [[MergeSort alloc] init];
//    NSLog(@"date = %@",[NSDate date]);
//   NSArray *sortedArray = [MS MergeSort:_sortedArray];
//    NSLog(@"sorted array = %@",sortedArray);
//    NSLog(@"date 2 = %@",[NSDate date]);

    
    
    
    // Liner Search
    //    searchResult result = [LinearSearch searchNumber:[NSNumber numberWithInteger:4] inArray:_sortedArray];
    //    searchResult result = [LinearSearch searchString:@"def" inArray:_stringArray];
    // searchResult result = [BinarySearch searchNumber:@9 inArray:_sortedArray];
    //    if (result.found) {
    //        NSLog(@"index is = %d",result.index);
    //    } else{
    //        NSLog(@"number does not exist");
    //    }
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSOperationQueue *queue = [NSOperationQueue new];
//    NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(doSomething:) object:@"operation 1"];
//    [queue addOperation:operation];
//    
//    NSBlockOperation *operation1 = [NSBlockOperation blockOperationWithBlock:^(void){
//        [self doSomething:@"block operation"];
//    }];
//    [queue addOperation:operation1];
}
-(NSArray *)genrateRandomArray{
    NSMutableArray *randArr = [NSMutableArray new];
        for (int i = 0; i < 15000; i++)
            [randArr addObject: [NSNumber numberWithInt: arc4random()%1500]];
        
    return randArr;
    
}
-(void)doSomething:(NSString *)opName{
    for (int i = 0; i < 100; ++i) {
        NSLog(@" count %d %@",i,opName);
        //sleep(5);
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//
//-(searchResult)findMinInArray:(NSArray *)arr withMin:(int)min andMax:(int)max{
//    searchResult result;
//    result.found = NO;
//    if (min==max) {
//        return result;
//    }
//    if(max<min){
//        return <#expression#>
//    }
//
//    return result;
//}

-(searchResult)findMinInRotatedSortedArray:(NSArray *)arr{
    searchResult result;
    result.found = NO;
    int max = (int)arr.count-1;
    int min = 0;
    int mid = min +(max-min)/2;
    if (arr[min]==arr[max]) {
        result.found = YES;
        result.index = min;
    }
//    if (arr[max]<arr[min]) {
//
//    }
    if (arr[mid]<arr[mid+1]) {
        
    }
    
    return result;
}
@end

