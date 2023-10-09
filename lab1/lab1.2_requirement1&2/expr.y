%{
/*********************************************
将所有的词法分析功能均放在 yylex 函数内实现，为 +、-、*、\、(、 ) 每个运算符及整数分别定义一个单词类别，在 yylex 内实现代码，能
识别这些单词，并将单词类别返回给词法分析程序。
实现功能更强的词法分析程序，可识别并忽略空格、制表符、回车等
空白符，能识别多位十进制整数。
YACC file
**********************************************/
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#ifndef YYSTYPE
#define YYSTYPE double
#endif
int yylex();
extern int yyparse();
FILE* yyin;
int jishu=0;
void yyerror(const char* s);
%}

//TODO:给每个符号定义一个单词类别
%token ADD MINUS MULTIPLY DIVIDE LEFT RIGHT NUM//定义乘除左括号右括号

%left ADD MINUS
%left MULTIPLY DIVIDE//定义运算符的优先级，乘除高于加减
%right UMINUS         

%%


lines   :       lines expr ';' { printf("%f\n", $2); }
        |       lines ';'
        |
        ;
//TODO:完善表达式的规则
expr    :       expr ADD expr   { $$=$1+$3; }
        |       expr MINUS expr   { $$=$1-$3; }
        |       expr MULTIPLY expr   { $$=$1*$3; }
        |       expr DIVIDE expr   {if($3!=0) $$=$1/$3;}
        |       MINUS expr %prec UMINUS   {$$=-$2;}
        |       LEFT expr RIGHT   {$$=$2;}
        |       NUMBER  
        ;

NUMBER  :       NUM      { $$=jishu; }
        ;

%%

// programs section
int yylex()
{
    int t;
    while(1){
        t=getchar();
        if(t==' '||t=='\t'||t=='\n'){
            //do noting
        }else if(isdigit(t)){
            //TODO:解析多位数字返回数字类型
            jishu=0;
            while(isdigit(t)){
                jishu=jishu*10+t-'0';
                t=getchar();               
            }
            ungetc(t, stdin);//将非数字字符放回输入流，以便后续处理
            return NUM;
        }else if(t=='+'){
            return ADD;
        }else if(t=='-'){
            return MINUS;
        }//TODO:识别其他符号
        else if(t=='*'){
            return MULTIPLY;
        }
        else if(t=='/'){
            return DIVIDE;
        }
        else if(t=='('){
            return LEFT;
        }
        else if(t==')'){
            return RIGHT;
        }
        else{
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