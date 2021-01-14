program D207;
function gcd(a, b: longint) : longint;
begin
	if b = 0 then
		gcd := a
	else
		gcd := gcd(b, a mod b);
end;
var
	n, m : longint;
begin
	readln(n, m);
	writeln(gcd(n, m));
	writeln(n * m div gcd(n, m));
end.