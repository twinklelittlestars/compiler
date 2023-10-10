// 实现功能更强的词法分析和语法分析程序，使之能支持变量，
// 修改词法分析程序，能识别变量（标识符）和“=”符号，修改语法分析器，
// 使之能分析、翻译“a=2”形式的（或更复杂的，“a=表达式”）赋值语句，
// 当变量出现在表达式中时，能正确获取其值进行计算（未赋值的变量取0）。
// 当然，这些都需要实现符号表的功能
%{
//头文件的引入
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>

//全局变量和函数的声明
int yylex();//词法分析函数
extern int yyparse();//语法分析函数
FILE* yyin;
int jishu=0;
void yyerror(const char* s);
double getSymbolValue(char* name);//获取符号表中变量值的函数
void setSymbolValue(char* name, double value);//设置符号表中变量值的函数

//符号表用于存储变量名和它们的值。这是一个简单的符号表实现，最多可以存储256个变量
typedef struct Symbol {
    char name[256];       
    double value;
} Symbol;

Symbol symbols[256];//符号表数组
int symbolCount = 0;

%}


%union {//这定义了一个联合类型，这用于存储词法单元的值，也就是yylval可以持有不同类型的值
    double val;
    char* str;
}

%token <str> VAR   //定义词法单元，属性是字符串
%token <val> NUM    //定义词法单元，属性是双精度浮点数
//对于操作符，不需要携带任何额外信息，所以就不用定义yylval的属性
%token ADD MINUS MULTIPLY DIVIDE LEFT RIGHT ASSIGN

%left ADD MINUS
%left MULTIPLY DIVIDE
%right UMINUS         

//定义语法规则的返回类型，属性是双精度浮点数，这意味着lines、expr的返回类型是双精度浮点数，因为后面lines中和expr中都会用到$$变量
%type <val> expr    
%type <val> lines  

%%

lines   :       lines expr ';' { printf("%f\n", $2); }//解析表达式并打印结果
        |       lines VAR ASSIGN expr ';' { setSymbolValue($2, $4); printf("%f\n", $4); free($2); }//解析变量赋值并打印结果
        |       lines ';' { } //空规则，什么也不做
        |                      { $$ = 0; }  //空规则，返回0
        ;

expr    :       expr ADD expr   { $$ = $1 + $3; }
        |       expr MINUS expr { $$ = $1 - $3; }
        |       expr MULTIPLY expr { $$ = $1 * $3; }
        |       expr DIVIDE expr { if($3 != 0) $$ = $1 / $3; }
        |       MINUS expr %prec UMINUS { $$ = -$2; }
        |       LEFT expr RIGHT { $$ = $2; }
        |       VAR { $$ = getSymbolValue($1); free($1); }
        |       NUM { $$ = $1; }
        ;

%%

int yylex()
{
    int t;
    char buffer[256];
    int idx = 0;
    while(1){
        t=getchar();
        if(t==' '||t=='\t'||t=='\n'){
            //do nothing
        }else if(isalpha(t)||t=='_'){//如果是字母
            buffer[idx++] = t;
            while(isalnum(t = getchar())||t=='_') {// 当t是字母或数字时
                buffer[idx++] = t;
            }
            buffer[idx] = '\0';//字符串末尾的空字符
            yylval.str = strdup(buffer);//strdup函数用于复制字符串
            ungetc(t, stdin);
            return VAR;
        }else if(isdigit(t)){
            yylval.val = 0;
            while(isdigit(t)){
                yylval.val = yylval.val*10 + t-'0';//yylval用于存储词法分析器返回的词法单元的值
                t=getchar();               
            }
            ungetc(t, stdin);
            return NUM;
        }else if(t=='+'){
            return ADD;
        }else if(t=='-'){
            return MINUS;
        }else if(t=='*'){
            return MULTIPLY;
        }else if(t=='/'){
            return DIVIDE;
        }else if(t=='('){
            return LEFT;
        }else if(t==')'){
            return RIGHT;
        }else if(t=='='){
            return ASSIGN;
        }else{
            return t;
        }
    }
}

//先匹配符号表，匹配到了则返回变量值，否则返回0
double getSymbolValue(char* name) {
    for(int i = 0; i < symbolCount; i++) {
        if(strcmp(symbols[i].name, name) == 0) {
            return symbols[i].value;
        }
    }
    return 0.0; // 未赋值的变量取0
}


//先匹配符号表，若匹配到了，则实现符号值的覆盖，否则将变量名和值存入符号表
void setSymbolValue(char* name, double value) {
    for(int i = 0; i < symbolCount; i++) {
        if(strcmp(symbols[i].name, name) == 0) {
            symbols[i].value = value;
            return;
        }
    }
    //从符号表中新增加一个符号，存储变量名和值
    strcpy(symbols[symbolCount].name, name);
    symbols[symbolCount].value = value;
    symbolCount++;
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
