%{
int words = 0;
%}

%%

(<=|>=|==|!=|<|>) { words++; }
(&&|\|\||!) { words++; }
[+\-*/%] { words++; }

%%

int main(int argc, char **argv) {
    yylex();
    printf("Words: %d\n", words);
    return 0;
}

int yywrap() {
    return 1;
}