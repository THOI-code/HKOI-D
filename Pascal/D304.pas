program D304;
var
	s, s1 : string;
	c : char;
	i : integer;
begin
	readln(s);
	s1 := '';
	for i := 1 to length(s) do
		begin
			s1 := s1 + '_';
		end;
	while s1 <> s do
		begin
			readln(c);
			for i := 1 to length(s) do
				if s[i] = c then
					s1[i] := c;
			writeln(s1);
		end;
end.