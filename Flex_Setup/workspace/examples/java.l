%{
int words = 0;
%}

%%

break|case|catch|class|const|continue|debugger|default|delete|do|else|export|extends|finally|for|function|if|import|in|instanceof|let|new|return|super|switch|this|throw|try|typeof|var|void|while|with|yield { words++; }
[$A-Za-z_][$A-Za-z0-9_]* { words++; }

%%

int main(int argc, char **argv) {
    yylex();
    printf("Words: %d\n", words);
    return 0;
}

int yywrap() {
    return 1;
}