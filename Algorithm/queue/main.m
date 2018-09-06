//
//  main.m
//  queue
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
#import <stdio.h>

int sum_for_number_from_one_to_hundred(void);

int add_a_with_b(int a, int b);

int max_common_from_a_and_b(int a, int b);

void max_common_from_input(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"sum_for_number_from_one_to_hundred = %d",sum_for_number_from_one_to_hundred());
        int a = 10, b = 12;
        NSLog(@"sum a_%d + b_%d = %d",a,b,add_a_with_b(a, b));
        max_common_from_input();
    }
    return 0;
}

void initQueue() {
    
}

bool queueEmpty() {
    return 0;
}

void enterQueue() {
    
}

void deleteQueue() {
    
}

void getHead() {
    
}

void clearQueue() {
    
}

/*
 数据结构
 1. 逻辑结构
    1. 集合
    2. 线性结构
    3. 树形结构
    4. 图形结构
 
 2. 物理结构（存储结构）
    1. 顺序存储：数据间的逻辑关系和物理关系一致
    2. 链式存储
 */


/**
 1. 定义一个变量存储N个数的和
 2. 把N个数依次加到sum中
 */
int sum_for_number_from_one_to_hundred(void) {
    int sum_result = 0, max = 101;
    for (int i = 0; i<max; i++) {
        sum_result = i + sum_result;
    }
    return sum_result;
}

int add_a_with_b(int a, int b) {
    int sum_result = 0;
    sum_result = a + b;
    return sum_result;
}

void max_common_from_input(void) {
    int max_common_result = 0, m = 0, n =0;
    printf("please input 2 number\n");
    scanf("%d,%d",&m, &n);
    max_common_result = m;
    do {
        m = n;
        n = max_common_result;
        max_common_result = m%n;
    } while (max_common_result);
    printf("max_common_result=%d\n",n);
}

/**
 时间复杂度
 O(1) < O(logn) <O(n) <O(n2) < O(n!)< O(n n)
 */
