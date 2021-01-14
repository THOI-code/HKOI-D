program D401;
const
	mxN = 10000000;
var
	n, i, j :  longint;
	sieve : array[1..mxN] of boolean;
begin
	for i := 1 to mxN do 
		sieve[i] := true;
	sieve[1] := false;
	i := 1;
	while i * i <= mxN do
		begin
			if sieve[i] then
				begin
					j := i * i;
					while j <= mxN do
						begin
							sieve[j] := false;
							j := j + i;
						end;
				end;
			inc(i);
		end;
	readln(n);
	for i := 1 to n do if sieve[i] then 
		writeln(i);
end.