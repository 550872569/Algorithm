//
//  main.m
//  1.2.2看商品猜价格
//
//  Created by Yan on 2018/7/1.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "stdio.h"

void guessPrice() {
    int oldPrice = 0, price = 0, i = 0;
    printf("请设置商品价格！500˜1000\n");
    scanf("%d",&oldPrice);
    printf("please guess the price...");
    while (oldPrice!=price) {
        i++;
        printf("\n参与者:");
        scanf("%d",&price);
        printf("\n主持人:");
        if (oldPrice<price) {
            printf("大了");
        } else if (oldPrice>price) {
            printf("小了");
        } else {
            printf("恭喜你猜对啦！猜了%d次，价格是：%d\n",i,oldPrice);
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        guessPrice();
    }
    return 0;
}
