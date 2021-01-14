program D403;
var
	s : string;
	letters : array[0..25] of integer;
	letterstemp : array[0..25] of integer;
	n, i, j : integer;
	flag : boolean;
begin
	readln(s);
	for i := 0 to 25 do 
		letters[i] := 0;
	for i := 1 to length(s) do 
		inc(letters[ord(s[i]) - ord('A')]);
	readln(n);
	for i := 1 to n do
		begin
			readln(s);
			for j := 0 to 25 do 
				letterstemp[j] := 0;
			for j := 1 to length(s) do 
				inc(letterstemp[ord(s[j]) - ord('A')]);
			flag := true;
			for j := 0 to 25 do if letters[j] < letterstemp[j] then 
				flag := false;
			if flag then
				writeln('Yes')
			else
				writeln('No');
		end;
end.