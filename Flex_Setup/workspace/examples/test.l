%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[a-zA-Z_][a-zA-Z_0-9]* { words++; chars += yyleng; }

%%

int main(int argc, char **argv) {
    yylex();
    printf("Lines: %d, Words: %d, Characters: %d\n", lines, words, chars);
    return 0;
}

int yywrap() {
    return 1;
}
