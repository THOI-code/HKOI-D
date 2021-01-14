program D201;
var
	fib : array[0..39] of longint;
	i, n : integer;
begin
	fib[0] := 0;
	fib[1] := 1;
	for i := 2 to 39 do fib[i] := fib[i - 1] + fib[i - 2];
	readln(n);
	writeln(fib[n]);	
	readln;
end.