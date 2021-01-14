program D309;
var
	s, s1 : string;
	i : integer;
begin
	readln(s);
	readln(s1);
	for i := 1 to length(s) do
		begin
			if (ord(s[i]) >= ord('A')) and (ord(s[i]) <= ord('Z')) then
				s[i] := chr(ord(s[i]) - ord('A') + ord('a'));
		end;
	for i := 1 to length(s1) do
		begin
			if (ord(s1[i]) >= ord('A')) and (ord(s1[i]) <= ord('Z')) then
				s1[i] := chr(ord(s1[i]) - ord('A') + ord('a'));
		end;
	if s < s1 then
		writeln('Smaller');
	if s = s1 then	
		writeln('Equal');
	if s > s1 then
		writeln('Greater');
end.