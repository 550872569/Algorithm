//
//  main.m
//  C基础
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

#define N 50

int sum(int a[], int n);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i, n, a[N];
        printf("please input a number of 50\n");
        scanf("n=%d",&n);
        for (i = 0; i < n; i++) {
            a[i]= i + 1;
        }
        printf("sum = %d\n",sum(a, n));
    }
    return 0;
}

/**
 递归
 */
int sum(int a[], int n) {
    if (n<=0) {
        return 0;
    } else {
        return a[n-1]+sum(a, n-1);
    }
}
