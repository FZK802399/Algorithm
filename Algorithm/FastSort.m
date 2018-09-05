//
//  FastSort.m
//  Algorithm
//
//  Created by EISOO on 2018/9/4.
//  Copyright © 2018年 eisoo. All rights reserved.
//

#import "FastSort.h"

@implementation FastSort

//快速排序
-(void)quickSortWithArray:(NSArray *)arr
{
    NSMutableArray *data = [[NSMutableArray alloc] initWithArray:arr];
    [self quickSortWithArray:data left:0 right:[arr count]-1];
}
-(void)quickSortWithArray:(NSMutableArray *)arr left:(NSInteger)left right:(NSInteger)right{
    if (right>left) {
        NSInteger i = left;
        NSInteger j = right+1;
        while (true) {
            while (i+1<[arr count]&&[arr objectAtIndex:++i]<[arr objectAtIndex:left]);
            while (j-1 > -1 && [arr objectAtIndex:--j] > [arr objectAtIndex:left]);
            if (i >= j) {
                break;
            }
            [self swapWithData:arr index1:i index2:j];
        }
        [self swapWithData:arr index1:left index2:j];
        [self quickSortWithArray:arr left:left right:j-1];
        [self quickSortWithArray:arr left:j+1 right:right];
    }
}
//冒泡排序
-(void)bubbleSort:(NSMutableArray*)arr{
    NSInteger n = arr.count;
    for (int j =0 ; j<n-1; j++) {
        for (int i = 0; i<n-1-j; i++) {
            if ([arr[i]integerValue]>[arr[i+1]integerValue]) {
                [self swapWithData:arr index1:i index2:i+1];
            }
        }
    }
    
    
}

-(void)swapWithData:(NSMutableArray *)arr index1:(NSInteger)index1 index2:(NSInteger)index2{
    NSNumber * temp = [arr objectAtIndex:index1];
    [arr replaceObjectAtIndex:index1 withObject:[arr objectAtIndex:index2]];
    [arr replaceObjectAtIndex:index2 withObject:temp];
}

@end
