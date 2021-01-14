program D402;
var
	n, m, i, j, flag : integer;
	s : string;
	r, ans : real;
	barcode : array[1..100] of string;
	cost : array[1..100] of real;
begin
	readln(n);
	for i := 1 to n do
		begin
			readln(s);
			val(copy(s, pos(' ', s) + 1, length(s) - pos(' ', s)), r, flag);
			s := copy(s, 1, pos(' ', s) - 1);
			barcode[i] := s;
			cost[i] := r;
		end;
	readln(m);
	ans := 0;
	for i := 1 to m do
		begin
			readln(s);
			j := 1;
			while barcode[j] <> s do 
				inc(j);
			ans := ans + cost[j];
		end;
	writeln(ans:0:1);
end.
