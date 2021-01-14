program D303;
var
	s, s1 : string;
	i : integer;
begin
	readln(s);
	s1 := '';
	for i := 1 to length(s) do begin
		s1 := s1 + s[length(s) - i + 1];
	end;
	writeln(s1);
	if s1 = s then writeln('Yes') else writeln('No');
end.