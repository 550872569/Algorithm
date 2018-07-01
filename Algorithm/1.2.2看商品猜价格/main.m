//
//  main.m
//  1.2.2看商品猜价格
//
//  Created by Yan on 2018/7/1.
//  Copyright © 2018年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "stdio.h"


/**
 需求：
    猜测商品价格 500 - 1000  取整10
    二分法
    1. 先设置一个价格
    2. 每次猜完主持人告诉 用户高了或者低了
    3. 直到猜对为止，输出猜测次数
 */
void guessThePrice() {
    int oldPrice = 0, price = 0, i = 0;
    printf("\n请输入预设价格500-1000:");
    scanf("%d",&oldPrice);
    while (oldPrice!=price) {
        i++;
        printf("\n参与者:");
        scanf("%d",&price);
        if (oldPrice>price) {
            printf("主持人:低了");
        } else if (oldPrice<price) {
            printf("主持人:高了");
        } else {
            printf("恭喜你猜对了!答案是:%d,您猜了%d次。",price,i);
        }
    }

}





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
        guessThePrice();
    }
    return 0;
}
