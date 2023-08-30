
writeln('Hello 1 (always executes first)');
coforall i in 2..4 {
    writeln('Hello ',i);
}
writeln('Hello 5 (always executes last)');
