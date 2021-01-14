program D203;
var
	n, i, j: integer;
begin
	readln(n);
	for i := 1 to 10 do
		for j := 1 to 10 do
			if j <> 10 then
				if ((i * 10 + j - 10) mod n = 0) or ((i * 10 + j - 10) div 10 = n) or ((i * 10 + j - 10) mod 10 = n) then
					write('Clap ')
				else
					write(i * 10 + j - 10, ' ' )
			else
			 	if ((i * 10 + j - 10) mod n = 0) or ((i * 10 + j - 10) div 10 = n) or ((i * 10 + j - 10) mod 10 = n) then
					writeln('Clap')
				else
					writeln(i * 10 + j - 10);
	readln;
end.