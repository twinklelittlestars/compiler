#include <stdio.h>

// 声明一个函数，用于输出
void displayMessage(const char* message);
    
// 主函数
int main() {
    
    int num; // 定义一个整数变量用于存储用户输入
    printf("请输入一个数字以计算其阶乘: ");
    scanf("%d", &num);

    // 判断用户输入的数字是否为负数，如果是负数，输出错误信息并结束程序
    if (num < 0) { 
        printf("负数的阶乘是未定义的。\n");
        return 0;
    }

    // 计算数字的阶乘
    int result = 1;
    for (int i = 1; i <= num; i++) {
	result *= i;
    }
    printf("%d的阶乘是: %d\n", num, result);

    // 判断结果是奇数还是偶数
    if (result % 2 == 0) {
        displayMessage("阶乘结果是偶数。");
    } else {
        displayMessage("阶乘结果是奇数。");
    }

    return 0;
}

// 定义一个函数，用于输出
void displayMessage(const char* message) {
    printf("%s\n", message);
}
