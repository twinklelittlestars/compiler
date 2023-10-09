//实现了修改Yacc程序，不进行表达式的计算，而是实现中缀表达式到后缀表达式的转换
%{
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h> //包含处理字符串的文件头
#ifndef YYSTYPE
#define YYSTYPE char*//词法分词的每一步结果都是字符串
#endif
int yylex();
int jishu=0;//处理两位以上的数需要用到这个变量
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);

// 提前声明 append 函数
char* append(char* a, char* b, char* op);
%}

%token ADD MINUS MUL DIV LEFT RIGHT NUM
%left ADD MINUS
%left MUL DIV
%right UMINUS         

%%

lines   :       lines expr ';' { printf("%s\n", $2); free($2); }
        |       lines ';'
        |
        ;

expr    :       expr ADD expr   { $$ = append($1, $3, "+"); }    //定义每个运算符的中缀变后缀的规则
        |       expr MINUS expr  { $$ = append($1, $3, "-"); }
        |       expr MUL expr    { $$ = append($1, $3, "*"); }
        |       expr DIV expr    { $$ = append($1, $3, "/"); }
        |       MINUS expr %prec UMINUS { $$ = append("-", $2, ""); }
        |       LEFT expr RIGHT     { $$ = $2; }
        |       NUM  { $$ = strdup($1); }//将字符串复制一份，因为$1是指向yylval的指针，yylval是一个全局变量，会被下一次赋值覆盖
        ;

%%
//这个函数用来拼接字符串
char* append(char* a, char* b, char* op) {
    char* result = malloc(strlen(a) + strlen(b) + strlen(op) + 3);//注意这里的+3，是因为要考虑到空格和结尾的\0
    sprintf(result, "%s %s %s", a, b, op); // 注意这里的顺序，以及添加了空格分隔符
    //释放a和b的内存
    free(a);
    free(b);
    return result;
}

int yylex()
{
    int t;
    char buffer[256];//这里的buffer是用来存储数字的，因为数字可能是多位的，所以需要一个buffer来存储
    while(1){
        t=getchar();
        if(t==' '||t=='\t'||t=='\n'){
            //do nothing
        }else if(isdigit(t)){
            jishu=0;
            while(isdigit(t)){
                jishu=jishu*10+t-'0';
                t=getchar();               
            }
            sprintf(buffer, "%d", jishu); // 将整数转换为字符串
            yylval = strdup(buffer); // yyval用于存储当前正在处理的语法规则的结果值，复制字符串
            ungetc(t, stdin);
            return NUM;
        }else if(t=='+'){
            return ADD;
        }else if(t=='-'){
            return MINUS;
        }else if(t=='*'){
            return MUL;
        }else if(t=='/'){
            return DIV;
        }else if(t=='('){
            return LEFT;
        }else if(t==')'){
            return RIGHT;
        }else{
            jishu=0;
            return t;
        }
    }
}

int main(void)
{
    yyin=stdin;
    do{
        yyparse();
    }while(!feof(yyin));
    return 0;
}

void yyerror(const char* s){
    fprintf(stderr,"Parse error: %s\n",s);
    exit(1);
}
