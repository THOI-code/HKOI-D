program D502;
uses math;
var
	s : string;
	f : text;
	deg, mn, mx, j : integer;
begin
	assign(f, 'weather.txt');
	reset(f);
	mn := maxint;
	mx := -maxint;
	readln;
	while not eof(f) do
		begin
			readln(f, s);
			delete(s, 1, 32);
			j := 1;
			deg := 0;
			while (ord(s[j]) >= ord('0')) and (ord(s[j]) <= ord('9')) do
				begin
					deg := deg * 10 + ord(s[j]) - ord('0');
					inc(j);
				end;
			mn := min(mn, deg);
			mx := max(mx, deg);
		end;
	writeln(mn, ' ', mx);
end.