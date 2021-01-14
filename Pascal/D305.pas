program D305;
var
	s : string;
	i, tmp, sum, checkdigit : integer;
begin
	readln(s);
	if length(s) = 7 then
		begin
			sum := 36 * 9 + (ord(s[1]) - ord('A') + 10) * 8;
			tmp := 7;
			for i := 2 to 7 do
				begin
					sum := sum + (ord(s[i]) - ord('0')) * tmp;
					dec(tmp);
				end;
			checkdigit := (11 - sum mod 11) mod 11;
			if checkdigit = 10 then
				writeln(s, '(A)')
			else
				writeln(s, '(', checkdigit, ')');
		end
	else
		begin
			sum := 9 * (ord(s[1]) - ord('A') + 10) + 8 * (ord(s[2]) - ord('A') + 10);
			tmp := 7;
			for i := 3 to 8 do
				begin
					sum := sum + (ord(s[i]) - ord('0')) * tmp;
					dec(tmp);
				end;
			checkdigit := (11 - sum mod 11) mod 11;
			if checkdigit = 10 then
				writeln(s, '(A)')
			else
				writeln(s, '(', checkdigit, ')');
		end;
end.