program D110;
uses math;
var
	a, b : string;
begin
	readln(a);
	readln(b);
	writeln(max(abs(ord(a[1]) - ord(b[1])), abs(ord(a[2]) - ord(b[2]))));
	readln;	
end.