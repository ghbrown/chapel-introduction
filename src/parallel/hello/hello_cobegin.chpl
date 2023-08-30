
writeln('Hello 1 (always executes first)');
cobegin {
    writeln('Hello 2');
    writeln('Hello 3');
    writeln('Hello 4');
}
writeln('Hello 5 (always executes last)');
