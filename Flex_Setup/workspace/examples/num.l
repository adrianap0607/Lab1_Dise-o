%{
int words = 0;
%}

%%

[0-9]+ { words++; }
[0-9]+\.[0-9]+ { words++; }
[0-9]+[eE][+-]?[0-9]+ { words++; }
0[xX][0-9a-fA-F]+ { words++; }

%%

int main(int argc, char **argv) {
    yylex();
    printf("Words: %d\n", words);
    return 0;
}

int yywrap() {
    return 1;
}