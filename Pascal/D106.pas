program D106;
var
	n : integer;
begin
	readln(n);
	if (n mod 10 = 1) and (n mod 100 <> 11) then 
		writeln(n, 'st')
	else if (n mod 10 = 2) and (n mod 100 <> 12) then
		writeln(n, 'nd')
	else if (n mod 10 = 3) and (n mod 100 <> 13) then
		writeln(n, 'rd')
	else
		writeln(n, 'th');
end.